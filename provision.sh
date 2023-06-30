#!/bin/bash

# Lista de pacotes a serem instalados
pacotes=(vim curl telnet unzip wget net-tools htop nmap)

# Nome da máquina
myhostname="lunar"

# Nome do usuário a ser criado
usuario="miguel"

# Instalar pacotes
sudo apt update
sudo apt install -y "${pacotes[@]}"

# Definir o nome da máquina
sudo hostnamectl hostname ${myhostname}

# Criar um usuário
# Coloquei o meu nome, mas você coloca o nome que quiser
sudo useradd -m ${usuario}
sudo echo -e "123Mudar\n123Mudar" | passwd ${usuario}
