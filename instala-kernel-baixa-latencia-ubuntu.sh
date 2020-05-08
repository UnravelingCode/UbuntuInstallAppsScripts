#!/bin/sh

###################################################################
# Script: instala-kernel-baixa-latencia-ubuntu.sh
# Descrição: este script instala o Kernel Linux de baixa latência oficial do Ubuntu.
# Argumentos: -
# Autor: Edson Lourenço
# E-mail: edson.lourenco@unravelingcode.com.br
# Data: 28/04/2020 ás 21:35
###################################################################

# 01) Instalando o kernel low latency
sudo apt-get update 
sudo apt-get install linux-lowlatency linux-headers-lowlatency 

# 02) Reinicie
sudo init 6

# 03) Check se o seu kernel é agora um Kernel Low Latency
uname -a
###################################################################
#O resultado será algo parecido com: 
# Linux [NomeSuaMáquina] 5.4.0-28-lowlatency* #32-Ubuntu SMP...
# *Note no (lowlatency).
###################################################################
