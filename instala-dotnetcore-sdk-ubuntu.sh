#!/bin/sh

###################################################################
# Script: instalando-dotnetcore-sdk-ubuntu.sh
# Descrição: este script instala o SDK do Microsoft .Net Core completo no Ubuntu 20.04
# Argumentos: -
# Autor: Edson Lourenço
# E-mail: edson.lourenco@unravelingcode.com.br
# Data: 28/04/2020 ás 21:10
###################################################################

# 01) Baixar pacote .deb de configurações para o repositório packages.microsoft.com
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# 02) Instale transport-https, ele habilita oo transporte de pacotes seguros (via HTTPS)
sudo apt-get update
sudo apt-get install apt-transport-https

# 03) Instalar o tempo de execução do .NET Core (opcional)
sudo apt-get update
sudo apt-get install dotnet-runtime-3.1

# 04) Atualize os pacotes disponíveis e instale o SDK do .NET Core 3.x
sudo apt-get update
sudo apt-get install dotnet-sdk-3.1

# 05) Instalar o ASP.NET Core Runtime
sudo apt-get update
sudo apt-get install aspnetcore-runtime-3.1