library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopLevel is
    Port (
        CLOCK_50 : in  STD_LOGIC;                      -- clock da DE10-Lite
        KEY      : in  STD_LOGIC_VECTOR(1 downto 0);   -- KEY[0] = rst, KEY[1] = start
        LEDR     : out STD_LOGIC_VECTOR(9 downto 0)    -- LEDs da placa
    );
end TopLevel;

architecture rtl of TopLevel is

    -- SINAIS INTERNOS
    signal rst_sig      : std_logic;
    signal start_sig    : std_logic;

    signal leds_seq_sig : std_logic_vector(2 downto 0); -- saída do Sequence_design
    signal show_done_sig: std_logic;                     -- não vai para LED, mas mantemos

begin

    ------------------------------------------------------------
    -- MAPEAR BOTÕES (KEY é ativo baixo na DE10-Lite)
    ------------------------------------------------------------
    rst_sig   <= not KEY(0);   -- KEY0 = reset (ativo baixo)
    start_sig <= not KEY(1);   -- KEY1 = start (ativo baixo)

    ------------------------------------------------------------
    -- INSTANCIAR O SEU SISTEMA COMPLETO
    ------------------------------------------------------------
    u_system: entity work.Sequence_design
        port map (
            clk        => CLOCK_50,
            rst        => rst_sig,
            start      => start_sig,
            ready_out  => open,           -- você não pediu no LED
            leds_out   => leds_seq_sig,   -- sai a sequência 3 bits
            show_done  => show_done_sig   -- só interno
        );

    ------------------------------------------------------------
    -- SAÍDA PARA LEDs DA FPGA
    ------------------------------------------------------------
    -- LEDs 0..2 mostram o valor led_sel do Show_random_vector
    LEDR(2 downto 0) <= leds_seq_sig;

    -- LEDs 3 mostra show_done (se quiser ver quando acabou)
    LEDR(3) <= show_done_sig;

    -- LEDs 4..9 apagados
    LEDR(9 downto 4) <= (others => '0');

end rtl;
