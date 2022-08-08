# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |docker-lab|
    dockerlab.memory = 512
    docekrlab.cpus = 2
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # Master node where ansible will be installed
  config.vm.define "docker-env" do |docker-env|
    docker-env.vm.box = "ubuntu/focal64"
    docker-env.vm.hostname = "docker-env"
    docker-env.vm.network "forwarded_port", guest: 3000, host: 3000
    docker-env.vm.network "private_network", ip: "192.168.101.10"
    docker-env.vm.provision "shell", path: "setup.sh"
