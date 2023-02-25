# Máquina Vagrant padronizada com o Shell

Neste projeto, uma máquina Ubuntu é criada no Vagrant e é padronizada usando um shell script.

Após a criação da máquina, o Vagrant acionará o shell como provisionador após ler a linha

`vagrant.config.vm.provision "shell", path: "provision.sh"`

Com isso, o shell executará os comandos contidos no arquivo provision.sh, que irão:

* Instalar os pacotes vim, curl, telnet, unzip, wget, net-tools, htop e nmap
* Definir o nome da máquina
* Criar um usuário
* Instalar o servidor web nginx

## Como utilizar este projeto

Para acessar o servidor nginx, digite na barra de pesquisa do navegador:

`192.168.56.11`

Para acessar a VM, execute:

`vagrant ssh`

Para destruir a VM, execute:

`vagrant destroy`
