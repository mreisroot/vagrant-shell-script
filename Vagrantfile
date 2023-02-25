Vagrant.configure("2") do |config|

  # Definir provider e alocar recursos
  config.vm.provider "virtualbox" do |v|
    v.name = "vagrant-shell-script"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Definir SO da VM
  config.vm.box = "ubuntu/jammy64"

  # Configurar rede

  # Redirecionar portas
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Rede privada com ip estático
  config.vm.network "private_network", ip: "192.168.56.11"

  # Padronização da VM usando o shell
  config.vm.provision "shell", path: "provision.sh"

end
