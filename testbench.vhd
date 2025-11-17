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

entity tb_genius_core is
end entity tb_genius_core;

architecture test of tb_genius_core is
    component genius_core is
        port (
            CLK       : in  std_logic;
            RESET     : in  std_logic;
            BTN_CHECK : in  std_logic;
            SW        : in  std_logic_vector(7 downto 0);
            LEDS      : out std_logic_vector(7 downto 0)
        );
    end component;

    signal s_CLK       : std_logic := '0';
    signal s_RESET     : std_logic := '0';
    signal s_BTN_CHECK : std_logic := '0';
    signal s_SW        : std_logic_vector(7 downto 0) := (others => '0');
    signal s_LEDS      : std_logic_vector(7 downto 0);

    constant CLK_PERIOD : time := 10 ns;
    signal sim_running  : boolean := true;

begin
    UUT: genius_core
        port map (
            CLK       => s_CLK,
            RESET     => s_RESET,
            BTN_CHECK => s_BTN_CHECK,
            SW        => s_SW,
            LEDS      => s_LEDS
        );

    -- Gerador de Clock
    s_CLK <= not s_CLK after CLK_PERIOD / 2 when sim_running;

    process
    begin
        report "INICIO DOS TESTES DE COMPARACAO";
        
        -- Reset inicial
        s_RESET <= '1';
        wait for 20 ns;
        s_RESET <= '0';
        wait for 20 ns;

        -- =========================================================
        -- CENARIO 1: TESTE DE VITORIA (WIN)
        -- =========================================================
        report "--- Testando Vitoria (Entrada Correta) ---";
        
        s_SW <= "10101010"; -- Coloca a resposta correta nos switches
        wait for 10 ns;
        
        s_BTN_CHECK <= '1'; -- Aperta o botao de checagem
        wait for 10 ns;
        s_BTN_CHECK <= '0'; -- Solta o botao
        
        -- Espera um tempo para ver os LEDs piscando (Estado WIN)
        wait for 200 ns; 

        -- =========================================================
        -- CENARIO 2: TESTE DE DERROTA (LOSE)
        -- =========================================================
        report "--- Testando Derrota (Entrada Errada) ---";
        
        s_SW <= "11110000"; -- Coloca uma resposta errada
        wait for 10 ns;
        
        s_BTN_CHECK <= '1'; -- Aperta o botao
        wait for 10 ns;
        s_BTN_CHECK <= '0'; -- Solta o botao
        
        -- Espera um tempo para ver o LED fixo de erro (Estado LOSE)
        wait for 200 ns;

        report "FIM DOS TESTES";
        sim_running <= false;
        wait;
    end process;

end architecture test;