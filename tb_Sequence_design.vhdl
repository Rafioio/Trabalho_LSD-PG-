library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

entity tb_Sequence_design is
end tb_Sequence_design;

architecture sim of tb_Sequence_design is

    function slv_to_string(slv: std_logic_vector) return string is
        variable result : string(1 to slv'length);
    begin
        for i in slv'range loop
            case slv(i) is
                when '0' => result(i - slv'low + 1) := '0';
                when '1' => result(i - slv'low + 1) := '1';
                when 'U' => result(i - slv'low + 1) := 'U';
                when 'X' => result(i - slv'low + 1) := 'X';
                when 'Z' => result(i - slv'low + 1) := 'Z';
                when others => result(i - slv'low + 1) := '?';
            end case;
        end loop;
        return result;
    end function;

    constant CLK_PERIOD : time := 10 ns;

    signal clk        : std_logic := '0';
    signal rst        : std_logic := '0';
    signal start      : std_logic := '0';
    signal leds_out   : std_logic_vector(2 downto 0);  
    signal ready_out  : std_logic;
    signal show_done  : std_logic;

begin

    uut: entity work.Sequence_design
        port map (
            clk       => clk,
            rst       => rst,
            start     => start,
            ready_out => ready_out,    
            leds_out  => leds_out,     
            show_done => show_done     
        );

    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for CLK_PERIOD/2;
            clk <= '1'; wait for CLK_PERIOD/2;
        end loop;
    end process;

    stim_proc : process
    begin
        report "=== Teste Sequence_design iniciado ===";
        
        -- Reset
        rst <= '1';
        wait for 30 ns;
        rst <= '0';
        wait for 60 ns;

        -- Pulso de start
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 4 us;

        wait for 70 ns;

        -- Pulso de start
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 4 us;

        wait for 70 ns;

        -- Pulso de start
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';

        -- Espera o processamento completo
        wait until show_done = '1' for 200000 ns; 
        
        if show_done = '1' then
            report "Processamento completo!";
            report "LEDs finais: " & slv_to_string(leds_out);
        else
            report "ERRO: Módulo não completou dentro do tempo esperado!" severity error;
        end if;

        report "=== Simulação encerrada ===";
        wait;
    end process;

end sim;