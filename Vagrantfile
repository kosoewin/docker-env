# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |k8slab|
    k8slab.memory = 512
    k8slab.cpus = 2
    k8slab.gui = true
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # Master node where k8s will be installed
  config.vm.define "k8smaster" do |k8smaster|
    k8smaster.vm.box = "ubuntu/focal64"
    k8smaster.vm.hostname = "k8smaster"
    k8smaster.vm.network "forwarded_port", guest: 3000, host: 3000
    k8smaster.vm.network "private_network", ip: "192.168.101.10"
    k8smaster.vm.provision "shell", path: "generate_hosts.sh"
  end
  config.vm.define "k8sworker01" do |k8sworker01|
    k8sworker01.vm.box = "ubuntu/focal64"
    k8sworker01.vm.hostname = "k8sworker01"
    k8sworker01.vm.network "private_network", ip: "192.168.101.20"
    k8sworker01.vm.provision "shell", path: "generate_hosts.sh"
  end
  config.vm.define "k8sworker02" do |k8sworker02|
    k8sworker02.vm.box = "ubuntu/focal64"
    k8sworker02.vm.hostname = "k8sworker02"
    k8sworker02.vm.network "private_network", ip: "192.168.101.30"
    k8sworker02.vm.provision "shell", path: "generate_hosts.sh"
  end
  
end
