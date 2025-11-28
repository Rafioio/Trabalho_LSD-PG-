# Makefile for VHDL Simulation with GHDL
# Usage: make [all|clean|view]

# Project files
VHDL_FILES = \
    Input.vhd \
    Led_Input.vhd \
    Show_Sequence.vhd \
    Comparator.vhd \
    Controller.vhd \
    tb_Controller.vhd

# Testbench entity
TB_ENTITY = tb_Controller

# GHDL options
GHDL_CMD = ghdl
GHDL_FLAGS = --std=08
GHDL_SIM_FLAGS = --wave=$(TB_ENTITY).ghw --stop-time=100us

# Targets
all: analyze elaborate run view

# Analysis - each file separately to see errors
analyze:
	@echo "Analyzing VHDL files..."
	$(GHDL_CMD) -a $(GHDL_FLAGS) Input.vhd
	$(GHDL_CMD) -a $(GHDL_FLAGS) Led_Input.vhd
	$(GHDL_CMD) -a $(GHDL_FLAGS) Show_Sequence.vhd
	$(GHDL_CMD) -a $(GHDL_FLAGS) Comparator.vhd
	$(GHDL_CMD) -a $(GHDL_FLAGS) Controller.vhd
	$(GHDL_CMD) -a $(GHDL_FLAGS) tb_Controller.vhd

# Elaboration
elaborate:
	@echo "Elaborating design..."
	$(GHDL_CMD) -e $(GHDL_FLAGS) $(TB_ENTITY)

# Simulation
run:
	@echo "Running simulation..."
	$(GHDL_CMD) -r $(GHDL_FLAGS) $(TB_ENTITY) $(GHDL_SIM_FLAGS)

# View waveform with GTKWave with automatic configuration
view:
	@echo "Opening waveform viewer with automatic configuration..."
	gtkwave $(TB_ENTITY).ghw wave_config.tcl &

# Clean up
clean:
	@echo "Cleaning up..."
	$(GHDL_CMD) --clean
	rm -f *.cf *.ghw *.o work-obj08.cf

# Quick simulation (all steps)
sim: clean all

# Manual view without script (if you want to add signals manually)
view_manual:
	@echo "Opening waveform viewer (manual mode)..."
	gtkwave $(TB_ENTITY).ghw &

# Help
help:
	@echo "Available targets:"
	@echo "  all     - Analyze, elaborate and run simulation"
	@echo "  sim     - Clean and run complete simulation"
	@echo "  analyze - Analyze all VHDL files"
	@echo "  elaborate - Elaborate the testbench"
	@echo "  run     - Run simulation and generate waveform"
	@echo "  view    - View waveform with GTKWave (auto-config)"
	@echo "  view_manual - View waveform (manual mode)"
	@echo "  clean   - Remove generated files"

.PHONY: all analyze elaborate run view clean sim help view_manual