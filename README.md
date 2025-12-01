# Trabalho_LSD-PG-

Trabalho_LSD_-PG-
Projeto RTL — Jogo de Memória "Genius" (Simon)
Este projeto implementa o clássico jogo Genius (Simon) utilizando VHDL em nível RTL (Register Transfer Level).
O objetivo é exercitar conceitos de FSM (Máquina de Estados Finitos), caminho de dados, interação com entradas/saídas físicas e aleatoriedade aplicada em sistemas digitais.

Objetivo do Projeto
Recriar o jogo Genius em hardware, controlado por uma FPGA, com funcionamento autônomo e interativo via LEDs, botões (KEYs) e switches (SWs).
O sistema apresenta uma sequência de LEDs que o jogador deve repetir corretamente.
A dificuldade é aumentada a cada rodada e o jogo sinaliza vitória ou derrota visualmente.

Requisitos do Sistema
Tipo	Descrição
Entradas	KEY0 (start), SW0–SW3 (resposta do jogador)
Saídas	LED0–LED3 (sequência do jogo e sinais visuais)
Estados FSM	8 estados definidos
Caminho de Dados	≥ 3 entradas, ≥ 3 saídas, In + Out ≥ 8
Máquina de Estados (FSM)
Estados definidos:
OFF – Estado inicial; espera KEY0 e todos os SW desligados.
→ Próximo: SHOW_SEQ

SHOW_SEQ – Mostra a sequência dos LEDs (0 a 3).
→ Próximo: WAIT_INPUT_1

WAIT_INPUT_1 – Aguarda o primeiro input.
→ Próximo: WAIT_INPUT_2

WAIT_INPUT_2 – Aguarda o segundo input.
→ Próximo: WAIT_INPUT_3

WAIT_INPUT_3 – Aguarda o terceiro input.
→ Próximo: WAIT_INPUT_4

WAIT_INPUT_4 – Aguarda o quarto input.
→ Próximo: WIN ou LOSE

WIN – Todos os LEDs piscam rapidamente (confirmação de acerto).
→ Próximo: OFF

LOSE – Todos os LEDs acendem e depois apagam (erro).
→ Próximo: OFF
