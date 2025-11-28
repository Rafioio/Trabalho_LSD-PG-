library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controller is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        start         : in  std_logic;

        -- sinais de módulos
        indice_ready  : in  std_logic;
        reorder_ready : in  std_logic;

        -- sinais de controle
        fsm_off       : out std_logic;
        load_seed     : out std_logic;
        enable_lfsr   : out std_logic;
        global_ready  : out std_logic
    );
end Controller;

architecture rtl of Controller is

    type state_type is (
        S_IDLE,
        S_LOAD_SEED,
        S_RUN_LFSR,
        S_REORDER,
        S_DONE
    );

    signal state, next_state : state_type;
    signal prev_start : std_logic := '0';
    signal start_rise : std_logic;

begin

    -------------------------------------------------------------------
    -- Detecta borda de subida no start
    -------------------------------------------------------------------
    start_rise <= '1' when (start = '1' and prev_start = '0') else '0';

    -------------------------------------------------------------------
    -- Processo síncrono: registradores de estado
    -------------------------------------------------------------------
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

    -------------------------------------------------------------------
    -- Processo combinacional: próximo estado + saídas
    -------------------------------------------------------------------
    process(state, start_rise, indice_ready, reorder_ready)
    begin
        -- valores padrão
        load_seed    <= '0';
        enable_lfsr  <= '0';
        global_ready <= '0';
        fsm_off      <= '0';

        case state is

            when S_IDLE =>
                fsm_off <= '1';
                if start_rise = '1' then
                    load_seed  <= '1';
                    next_state <= S_LOAD_SEED;
                else
                    next_state <= S_IDLE;
                end if;

            when S_LOAD_SEED =>
                enable_lfsr <= '1';
                next_state  <= S_RUN_LFSR;

            when S_RUN_LFSR =>
                enable_lfsr <= '1';
                if indice_ready = '1' then
                    next_state <= S_REORDER;
                else
                    next_state <= S_RUN_LFSR;
                end if;

            when S_REORDER =>
                if reorder_ready = '1' then
                    next_state <= S_DONE;
                else
                    next_state <= S_REORDER;
                end if;

            when S_DONE =>
                global_ready <= '1';
                next_state   <= S_IDLE;

        end case;
    end process;

end rtl;
