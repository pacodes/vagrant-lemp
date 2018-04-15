# -*- mode: ruby -*-
# vi: set ft=ruby :

API_VERSION = "2"

Vagrant.configure(API_VERSION) do |config|

  config.vm.box = "debian/jessie64"

  config.vm.hostname = 'vagrant-lemp'

  config.vm.network "private_network", ip: "192.168.100.100"

  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/vagrant"
  # config.vm.synced_folder ".", "/vagrant", type: 'nfs'

  config.vm.provision "shell", path: "vagrant/provisioner.sh"

  config.vm.provision "shell", path: "vagrant/timezone.sh"

  config.vm.provision "shell", path: "vagrant/apt-get.sh"

  config.vm.provision "shell", path: "vagrant/nginx.sh"

  config.vm.provision "shell", path: "vagrant/php.sh"

  config.vm.provision "shell", path: "vagrant/mysql.sh"

  config.vm.provision "shell", path: "vagrant/other.sh"

  config.vm.provision "shell", path: "vagrant/clean.sh"

end
