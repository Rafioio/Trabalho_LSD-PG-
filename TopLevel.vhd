library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Aguardar a definição de array_3X7bits
use work.Types.all;  -- Inclui o tipo array_3X7bits

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
    
    -- Sinal para a sequência dos LEDs, agora com o tipo correto (array_3X7bits)
    signal random_vector_sig : array_3X7bits;  -- Definição correta do tipo

    signal leds_seq_sig : std_logic_vector(6 downto 0); -- saída do Show_random_vector (7 LEDs)
    signal show_done_sig: std_logic;                     -- Sinal de finalização

begin

    ------------------------------------------------------------
    -- MAPEAR BOTÕES (KEY é ativo baixo na DE10-Lite)
    ------------------------------------------------------------
    rst_sig   <= not KEY(0);   -- KEY0 = reset (ativo baixo)
    start_sig <= not KEY(1);   -- KEY1 = start (ativo baixo)

    ------------------------------------------------------------
    -- INSTANCIAR O SEU SISTEMA COMPLETO
    ------------------------------------------------------------
    -- Atribuição do random_vector_sig (7 LEDs)
    random_vector_sig <= (
        "001",  -- LED 0 acende primeiro
        "010",  -- LED 1 acende depois
        "101",  -- LED 2 acende depois
        "011",  -- LED 3 acende depois
        "111",  -- LED 4 acende depois
        "110",  -- LED 5 acende depois
        "100"   -- LED 6 acende depois
    );

    -- Instanciando o módulo Show_random_vector
    u_system: entity work.Show_random_vector
        port map (
            clk           => CLOCK_50,
            rst           => rst_sig,
            start_show    => start_sig,
            random_vector => random_vector_sig,  -- Passando o vetor de LEDs
            led_sel       => leds_seq_sig,
            done          => show_done_sig
        );

    ------------------------------------------------------------
    -- SAÍDA PARA LEDs DA FPGA
    ------------------------------------------------------------
    -- LEDs 0..6 mostram o valor led_sel do Show_random_vector
    LEDR(6 downto 0) <= leds_seq_sig;

    -- LEDs 7, 8 e 9 apagados
    LEDR(9 downto 7) <= (others => '0');

end rtl;
