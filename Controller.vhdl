-------------------------------------------------------------------------------
-- Projeto: Projeto Genius
-- Curso: Engenharia de Sistemas Turma PN5
--
-- Integrantes:
--   Guilherme Fachinelli
--   Rafael Campello Soares
--   Gustavo Silvestre Barroso
--
-- Descrição:
--   Arquivo pertencente ao projeto digital baseado no jogo Genius.
--   Desenvolvido para fins acadêmicos na disciplina de Sistemas Digitais.
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controller is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start : in STD_LOGIC;
        sw_usuario : in STD_LOGIC_VECTOR(6 downto 0);
        ativado : in STD_LOGIC_VECTOR(2 downto 0);
        sw_out : out STD_LOGIC_VECTOR(6 downto 0);
        inicia_Input : out STD_LOGIC;
        enable_led : out STD_LOGIC;
        vetor_resultado : out std_logic_vector(20 downto 0);
        leds_out : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Controller;

architecture Behavioral of Controller is
    type array_resposta is array (0 to 6) of std_logic_vector(2 downto 0);
    signal resposta_usuario : array_resposta := (others => "000");

    type estado_type is (AGUARDA_START, CAPTURANDO, COMPLETO);
    signal estado : estado_type := AGUARDA_START;

    signal contador_inputs : integer range 0 to 7 := 0;
    signal vetor_resultado_int : std_logic_vector(20 downto 0) := (others => '0');
    signal leds_internos : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal enable_led_int : STD_LOGIC := '0';  -- Sinal interno para enable_led

    -- NOVO: sinal sincronizado para evitar leitura concorrente de 'ativado'
    signal ativado_sync : std_logic_vector(2 downto 0) := (others => '0');

begin
    -- Conecta sinais internos às saídas
    vetor_resultado <= vetor_resultado_int;
    leds_out <= leds_internos;
    enable_led <= enable_led_int;

    ----------------------------------------------------------------------------
    -- Processo de sincronização: amostra 'ativado' num flip-flop para evitar
    -- que o Controller leia um valor que esteja sendo escrito no mesmo edge.
    ----------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            ativado_sync <= (others => '0');
        elsif rising_edge(clk) then
            -- amostra o sinal 'ativado' vindo do bloco Input
            ativado_sync <= ativado;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Processo para construir o vetor resultado (com base em resposta_usuario)
    ----------------------------------------------------------------------------
    process(resposta_usuario)
        variable temp_vector : std_logic_vector(20 downto 0);
    begin
        temp_vector := (others => '0');
        for i in 0 to 6 loop
            temp_vector((i*3)+2 downto (i*3)) := resposta_usuario(i);
        end loop;
        vetor_resultado_int <= temp_vector;
    end process;

    ----------------------------------------------------------------------------
    -- Processo para controlar os LEDs (usa ativado_sync)
    ----------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            leds_internos <= (others => '0');
        elsif rising_edge(clk) then
            if enable_led_int = '1' and ativado_sync /= "000" then
                case ativado_sync is
                    when "001" => leds_internos(0) <= '1';  -- SW0 -> LED0
                    when "010" => leds_internos(1) <= '1';  -- SW1 -> LED1
                    when "011" => leds_internos(2) <= '1';  -- SW2 -> LED2
                    when "100" => leds_internos(3) <= '1';  -- SW3 -> LED3
                    when "101" => leds_internos(4) <= '1';  -- SW4 -> LED4
                    when "110" => leds_internos(5) <= '1';  -- SW5 -> LED5
                    when "111" => leds_internos(6) <= '1';  -- SW6 -> LED6
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Processo principal da FSM (usa ativado_sync ao invés de ativado)
    ----------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            estado <= AGUARDA_START;
            contador_inputs <= 0;
            inicia_Input <= '0';
            enable_led_int <= '0';
            sw_out <= (others => '0');
            for i in 0 to 6 loop
                resposta_usuario(i) <= "000";
            end loop;

        elsif rising_edge(clk) then
            -- passa as switches para o módulo Input
            sw_out <= sw_usuario;

            case estado is
                when AGUARDA_START =>
                    inicia_Input <= '0';
                    enable_led_int <= '0';
                    contador_inputs <= 0;
                    if start = '1' then
                        estado <= CAPTURANDO;
                        inicia_Input <= '1';
                        enable_led_int <= '1';  -- Ativa controle de LEDs
                    end if;

                when CAPTURANDO =>
                    inicia_Input <= '1';
                    enable_led_int <= '1';  -- Mantém LEDs ativos

                    -- usa ativado_sync para garantir valor estável
                    if ativado_sync /= "000" then
                        -- proteções: evita escrever fora do array
                        if contador_inputs <= 6 then
                            resposta_usuario(contador_inputs) <= ativado_sync;
                            contador_inputs <= contador_inputs + 1;
                        end if;

                        if contador_inputs = 6 then
                            -- quando contador_inputs já valia 6 antes do incremento,
                            -- após escrever a última posição, transita para COMPLETO.
                            estado <= COMPLETO;
                            inicia_Input <= '0';
                            enable_led_int <= '1';  -- Mantém LEDs acesos
                        end if;
                    end if;

                when COMPLETO =>
                    inicia_Input <= '0';
                    enable_led_int <= '1';  -- LEDs permanecem acesos
                    if reset = '1' then
                        estado <= AGUARDA_START;
                    end if;

            end case;
        end if;
    end process;

end Behavioral;
