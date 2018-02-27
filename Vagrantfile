# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  # Tableau
  (1..1).each do |i|
    config.vm.provider "virtualbox" do |vb|
      vb.name = "tableau"
      vb.memory = 8192
      vb.cpus = 2
    end

    config.vm.define "tableau0#{i}" do |server|
      server.vm.hostname = "tableau0#{i}"
      server.vm.network "private_network", ip: "10.0.1.3#{i}"
    end
  end

  # Provision
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/authorized_keys"

end
