Vagrant.configure("2") do |config|

  # Definir provider e alocar recursos
  config.vm.provider "virtualbox" do |vb|
    vb.name = "vagrant-shell-script"
    vb.cpus = 1
    vb.memory = 1024
    vb.gui = false
  end

  # Definir SO e redes
  config.vm.box = "ubuntu/lunar64"
  config.vm.network "private_network", ip: "192.168.56.2"

  # Provisionar a máquina virtual por shell script
  config.vm.provision "shell", path: "provision.sh"

end
