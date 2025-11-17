# Makefile para Projeto Genius - Controller
# Comandos: make all, make sim, make clean

# Configurações
VHDL_FILES = Types.vhdl \
             Seed_generator.vhdl \
             LFSR_3bits.vhdl \
             Reorder_Vector.vhdl \
             Input.vhdl \
             Led_Input.vhdl \
             Controller.vhdl \
             tb_Controller.vhdl

TB_ENTITY = tb_Controller
WORK_DIR = work
GHDL_CMD = ghdl
GHDL_FLAGS = --std=08 --ieee=synopsys -fexplicit
GTKWAVE_CMD = gtkwave

# Alvo principal
all: compile sim

# Criar diretório work se não existir
$(WORK_DIR):
	@mkdir -p $(WORK_DIR)

# Compilar todos os arquivos
compile: $(WORK_DIR)
	@echo "Compilando arquivos VHDL..."
	$(GHDL_CMD) -i $(GHDL_FLAGS) --workdir=$(WORK_DIR) $(VHDL_FILES)
	$(GHDL_CMD) -m $(GHDL_FLAGS) --workdir=$(WORK_DIR) $(TB_ENTITY)
	@echo "Compilacao concluida!"

# Executar simulação
sim: compile
	@echo "Iniciando simulacao..."
	$(GHDL_CMD) -r $(GHDL_FLAGS) --workdir=$(WORK_DIR) $(TB_ENTITY) --vcd=$(TB_ENTITY).vcd --stop-time=2ms
	@echo "Simulacao concluida! Verifique os prints no terminal."

# Visualizar waveforms (opcional)
wave: sim
	@echo "Abrindo waveforms no GTKWave..."
	$(GTKWAVE_CMD) $(TB_ENTITY).vcd &

# Limpar arquivos gerados
clean:
	@echo "Limpando arquivos..."
	$(GHDL_CMD) --clean --workdir=$(WORK_DIR)
	rm -rf $(WORK_DIR)
	rm -f $(TB_ENTITY).vcd
	rm -f e~*.o
	rm -f *.cf
	@echo "Limpeza concluida!"

.PHONY: all compile sim wave clean