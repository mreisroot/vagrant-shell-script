Vagrant.configure("2") do |config|

  # Definindo nome, cpu e memória da VM
  config.vm.provider "virtualbox" do |v|
    v.name = "vagrant-shell-script"
    v.cpus = 1
    v.memory = "1024"
  end

  # Definindo o SO da VM
  config.vm.box = "ubuntu/focal64"

  # Configuração de rede

  # Redirecionamento de portas
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Rede pública com ip estático
  # Altere o ip estático com um ip parecido com o da sua máquina física
  config.vm.network "public_network", ip: "192.168.15.55"

  # Padronização da VM usando o shell
  config.vm.provision "shell", path: "script.sh"

end
