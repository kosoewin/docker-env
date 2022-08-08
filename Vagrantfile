# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |dockerlab|
    dockerlab.memory = 512
    dockerlab.cpus = 2
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # Master node where ansible will be installed
  config.vm.define "docker_env" do |docker_env|
    docker_env.vm.box = "ubuntu/focal64"
    docker_env.vm.hostname = "docker-env"
    docker_env.vm.network "forwarded_port", guest: 3000, host: 3000
    docker_env.vm.network "private_network", ip: "192.168.101.10"
    docker_env.vm.provision "shell", path: "setup.sh"
  end
end
