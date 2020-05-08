###################################################################
# Script: instala-nodejs_com-nvm.sh
# Descrição: este script instala Nodejs via NVM (Node Version Manager)
# Argumentos: -
# Autor: Edson Lourenço
# E-mail: edson.lourenco@unravelingcode.com.br
# Data: 28/04/2020 ás 21:45
###################################################################

# 01) Instalando o NVM
cd ~/Downloads
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc

# 02) Instalando o Node via NVM
nvm install 12.16.3