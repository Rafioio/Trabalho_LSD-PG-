library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controller is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        start         : in  std_logic;

        -- sinais antigos
        indice_ready  : in  std_logic;
        reorder_ready : in  std_logic;

        -- NOVO SINAL: terminou de mostrar LEDs
        show_done     : in  std_logic;

        -- NOVO SINAL: start para mostrar LEDs
        start_show    : out std_logic;

        -- saídas de controle
        fsm_off       : out std_logic;
        load_seed     : out std_logic;
        enable_lfsr   : out std_logic;

        -- pronto geral
        global_ready  : out std_logic
    );
end Controller;

architecture rtl of Controller is

    ---------------------------------------------------------------------
    -- Declaração dos estados (codificação enumerada → sintetiza flip-flops)
    ---------------------------------------------------------------------
    type state_type is (
        S_IDLE,
        S_LOAD_SEED,
        S_RUN_LFSR,
        S_REORDER,
        S_SHOW,
        S_DONE
    );

    signal state, next_state : state_type;

    ---------------------------------------------------------------------
    -- Detecção de borda de subida em start
    ---------------------------------------------------------------------
    signal prev_start : std_logic := '0';
    signal start_rise : std_logic;

begin

    start_rise <= '1' when (start = '1' and prev_start = '0') else '0';

    --------------------------------------------------------------
    -- 1) REGISTRADORES (processo síncrono)
    --------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state      <= S_IDLE;
            prev_start <= '0';
        elsif rising_edge(clk) then
            state      <= next_state;
            prev_start <= start;
        end if;
    end process;


    --------------------------------------------------------------
    -- 2) LÓGICA COMBINACIONAL (próximo estado + saídas)
    --------------------------------------------------------------
    process(state, start_rise, indice_ready, reorder_ready, show_done, start)
    begin
        -- valores padrão
        load_seed    <= '0';
        enable_lfsr  <= '0';
        start_show   <= '0';
        global_ready <= '0';

        case state is

            ------------------------------------------------------------------
            when S_IDLE =>
                if start_rise = '1' then
                    load_seed  <= '1';
                    next_state <= S_LOAD_SEED;
                else
                    next_state <= S_IDLE;
                end if;
                fsm_off <= '1';

            ------------------------------------------------------------------
            when S_LOAD_SEED =>
                enable_lfsr <= '1';
                next_state  <= S_RUN_LFSR;
                fsm_off     <= '0';

            ------------------------------------------------------------------
            when S_RUN_LFSR =>
                enable_lfsr <= '1';
                if indice_ready = '1' then
                    next_state <= S_REORDER;
                else
                    next_state <= S_RUN_LFSR;
                end if;
                fsm_off <= '0';

            ------------------------------------------------------------------
            when S_REORDER =>
                if reorder_ready = '1' then
                    start_show <= '1';
                    next_state <= S_SHOW;
                else
                    next_state <= S_REORDER;
                end if;
                fsm_off <= '0';

            ------------------------------------------------------------------
            when S_SHOW =>
                if show_done = '1' then
                    next_state <= S_DONE;
                else
                    next_state <= S_SHOW;
                end if;
                fsm_off <= '0';

            ------------------------------------------------------------------
            when S_DONE =>
                global_ready <= '1';
                next_state <= S_IDLE;

                fsm_off <= '0';

        end case;
    end process;

end rtl;
