# GTKWave script to load all signals automatically

# Add all signals to waveform
add wave -noupdate -group "Clock_Reset" /tb_controller/clk
add wave -noupdate -group "Clock_Reset" /tb_controller/reset
add wave -noupdate -group "Clock_Reset" /tb_controller/start

# Control signals
add wave -noupdate -group "Control_Signals" /tb_controller/inicia_input
add wave -noupdate -group "Control_Signals" /tb_controller/enable_led
add wave -noupdate -group "Control_Signals" /tb_controller/clear_leds
add wave -noupdate -group "Control_Signals" /tb_controller/sequence_done

# System State
add wave -noupdate -group "System_State" /tb_controller/system_state
add wave -noupdate -group "System_State" /tb_controller/system_state_debug

# User Input
add wave -noupdate -group "User_Input" /tb_controller/sw_usuario
add wave -noupdate -group "User_Input" /tb_controller/ativado
add wave -noupdate -group "User_Input" /tb_controller/ativado_debug

# LED Outputs - MOST IMPORTANT!
add wave -noupdate -group "LED_Outputs" /tb_controller/leds_out
add wave -noupdate -group "LED_Outputs" -color yellow -radix binary /tb_controller/leds_out

# Result vectors
add wave -noupdate -group "Result_Vectors" /tb_controller/vetor_resultado
add wave -noupdate -group "Result_Vectors" /tb_controller/correct_sequence

# Simulation control
add wave -noupdate -group "Simulation" /tb_controller/sim_finished

# Configure waveform display
configure wave -namecolwidth 200
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns

# Run zoom to fit
zoom full