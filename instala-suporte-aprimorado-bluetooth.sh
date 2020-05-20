#!/bin/sh

###################################################################
# Script: instala-suporte-aprimorado-bluetooth.sh
# Descrição: este script instala suporte aprimorado ao BlueTooth do Ubuntu
# Argumentos: -
# Autor: Edson Lourenço
# E-mail: edson.lourenco@unravelingcode.com.br
# Data:10/05/2020 ás 21:45
###################################################################

sudo apt-get install bluetooth bluez bluez-tools rfkill
sudo rfkill unblock bluetooth
sudo service bluetooth start
sudo apt-get install blueman