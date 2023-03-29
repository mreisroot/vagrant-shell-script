#!/bin/sh

ferramentas="vim curl telnet unzip wget net-tools htop nmap"
usuario="miguel"

# Atualizar os repositórios do Ubuntu
sudo apt update

# Instalando alguns pacotes de ferramentas para administrar o servidor
sudo apt install -y $ferramentas

# Definindo o nome da máquina
sudo hostnamectl set-hostname webserver

# Criando um usuário
# Coloquei o meu nome, mas você coloca o nome que quiser
sudo useradd -m $usuario
sudo printf "123Mudar\n123Mudar" | passwd $usuario

# Instalando o servidor nginx
sudo apt install -y nginx
