# Makefile para Projeto Genius - Controller
# Comandos: make all, make sim, make clean, make wave

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
WAVE_FILE = wave.vcd

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

# Executar simulação com waveform
sim: compile
	@echo "Iniciando simulacao e gerando waveform..."
	$(GHDL_CMD) -r $(GHDL_FLAGS) --workdir=$(WORK_DIR) $(TB_ENTITY) --vcd=$(WAVE_FILE) --stop-time=3ms
	@echo "Simulacao concluida! Waveform salvo em: $(WAVE_FILE)"

# Visualizar waveform
wave: sim
	@echo "Abrindo waveform no GTKWave..."
	$(GTKWAVE_CMD) $(WAVE_FILE) &

# Limpar arquivos gerados
clean:
	@echo "Limpando arquivos..."
	$(GHDL_CMD) --clean --workdir=$(WORK_DIR)
	rm -rf $(WORK_DIR)
	rm -f $(WAVE_FILE)
	rm -f $(TB_ENTITY).vcd
	rm -f e~*.o
	rm -f *.cf
	@echo "Limpeza concluida!"

# Ajuda
help:
	@echo "COMANDOS DISPONIVEIS:"
	@echo "  make all     - Compila e executa simulacao completa"
	@echo "  make compile - Apenas compila os arquivos"
	@echo "  make sim     - Compila, executa e gera wave.vcd"
	@echo "  make wave    - Executa simulacao e abre GTKWave"
	@echo "  make clean   - Remove todos os arquivos gerados"
	@echo "  make help    - Mostra esta ajuda"

.PHONY: all compile sim wave clean help