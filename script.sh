#!/bin/bash

# Atualizando os repositórios do Ubuntu
sudo apt update

# Instalando alguns pacotes de ferramentas para administrar o servidor
sudo apt install -y vim curl telnet unzip wget net-tools htop nmap

# Definindo o nome da máquina
sudo hostnamectl set-hostname webserver

# Criando um usuário
# Coloquei o meu nome, mas você coloca o nome que quiser
sudo useradd -m miguel

# Instalando o servidor nginx
sudo apt install -y nginx
