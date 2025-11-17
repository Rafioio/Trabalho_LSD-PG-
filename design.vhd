-------------------------------------------------------------------------------
-- Projeto: Projeto Genius
-- Curso: Engenharia de Sistemas – Turma PN5
--
-- Integrantes:
--   • Guilherme Fachinelli
--   • Rafael Campello Soares
--   • Gustavo Silvestre Barroso
--
-- Descrição:
--   Arquivo pertencente ao projeto digital baseado no jogo Genius.
--   Desenvolvido para fins acadêmicos na disciplina de Sistemas Digitais.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genius_core is
    port (
        CLK       : in  std_logic;
        RESET     : in  std_logic;
        BTN_CHECK : in  std_logic;                    -- Botao para validar a resposta
        SW        : in  std_logic_vector(7 downto 0); -- A entrada do usuario
        LEDS      : out std_logic_vector(7 downto 0)  -- Saida visual
    );
end entity genius_core;

architecture behavioral of genius_core is
    -- Estados da FSM
    type state_type is (S_IDLE, S_CHECK, S_WIN, S_LOSE);
    signal current_state : state_type;

    -- PADRAO FIXO PARA TESTE (Ex: 10101010)
    constant FIXED_PATTERN : std_logic_vector(7 downto 0) := "10101010";

    -- Timer simples para controlar o tempo que fica no estado Win/Lose
    signal timer : integer range 0 to 100 := 0; 
    
    -- Sinal auxiliar para piscar no estado WIN
    signal blink_toggle : std_logic := '0';

begin

    process(CLK, RESET)
    begin
        if (RESET = '1') then
            current_state <= S_IDLE;
            LEDS          <= "00000000";
            timer         <= 0;
            blink_toggle  <= '0';
            
        elsif (rising_edge(CLK)) then
            
            case current_state is
                
                -- 1. Estado de Espera (Aguardando usuario configurar SW e apertar botao)
                when S_IDLE =>
                    LEDS <= "00000000"; -- Leds apagados enquanto espera
                    if (BTN_CHECK = '1') then
                        current_state <= S_CHECK;
                    end if;

                -- 2. Estado de Comparacao (A Logica Principal)
                when S_CHECK =>
                    if (SW = FIXED_PATTERN) then
                        current_state <= S_WIN;  -- Iguais -> Vitoria
                        timer <= 20;             -- Tempo de duracao da animacao
                    else
                        current_state <= S_LOSE; -- Diferentes -> Derrota
                        timer <= 20;             -- Tempo de duracao da animacao
                    end if;

                -- 3. Estado de Vitoria (Pisca os LEDs)
                when S_WIN =>
                    blink_toggle <= not blink_toggle; -- Inverte o bit a cada clock
                    if (blink_toggle = '1') then
                        LEDS <= "11111111"; -- Aceso
                    else
                        LEDS <= "00000000"; -- Apagado
                    end if;
                    
                    -- Contagem do tempo
                    if (timer > 0) then
                        timer <= timer - 1;
                    else
                        current_state <= S_IDLE; -- Volta para o inicio
                    end if;

                -- 4. Estado de Derrota (Acende padrao fixo de erro)
                when S_LOSE =>
                    LEDS <= "10000001"; -- Padrao fixo indicando erro (bordas acesas)
                    
                    if (timer > 0) then
                        timer <= timer - 1;
                    else
                        current_state <= S_IDLE; -- Volta para o inicio
                    end if;
                    
            end case;
        end if;
    end process;

end architecture behavioral;