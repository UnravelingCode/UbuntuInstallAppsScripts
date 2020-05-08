#!/bin/sh

###################################################################
# Script: instala-docker-ubuntu.sh
# Descrição: este script instala o docker no ubuntu
# Argumentos: -
# Autor: Edson Lourenço
# E-mail: edson.lourenco@unravelingcode.com.br
# Data: 28/04/2020 ás 21:00
###################################################################

# 01) Instalar o Docker
sudo apt-get install docker.io -y

# 02) Incluir usuário da máquina ao Docker
sudo usermod -aG docker $USER
sudo setfacl -m user:$USER:rw /var/run/docker.sock

# 03) Exemplos para instanciar containers docker:
###################################################################
# Nome da aplicação docker: Docker Hello World
# Baixando imagem: 
# $ docker pull hello-world
# Instanciando container:
# $ docker images hello-world
###################################################################
# Nome da aplicação docker: MariaDB
# Baixando imagem:
# $ docker pull mariadb
# Instanciando container:
# $ docker run -p 3306:3306 --name mariadb-dev-c01 -e MYSQL_ROOT_PASSWORD=@abc123! -d mariadb
###################################################################
# Nome da aplicação docker: Microsoft SQL Server 2019
# Baixando imagem: 
# $ docker pull mcr.microsoft.com/mssql/server:2019-latest
# Instanciando container:
# $ docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=@abc123!' -e 'MSSQL_PID=Express' -p 1433:1433 --name sqlserver-dev-c01 -d mcr.microsoft.com/mssql/server:2019-latest
###################################################################