# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |k8slab|
    k8slab.memory = 512
    k8slab.cpus = 2
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # Master node where k8s will be installed
  config.vm.define "k8s_master" do |k8s_master|
    k8s_master.vm.box = "ubuntu/focal64"
    k8s_master.vm.hostname = "k8s_master"
    k8s_master.vm.network "forwarded_port", guest: 3000, host: 3000
    k8s_master.vm.network "private_network", ip: "192.168.101.10"
    k8s_master.vm.provision "shell", path: "generate_hosts.sh"
  end
  config.vm.define "k8s_worker01" do |k8s_worker01|
    k8s_worker01.vm.box = "ubuntu/focal64"
    k8s_worker01.vm.hostname = "k8s_worker01"
    k8s_worker01.vm.network "private_network", ip: "192.168.101.20"
    k8s_worker01.vm.provision "shell", path: "generate_hosts.sh"
  end
  config.vm.define "k8s_worker02" do |k8s_worker02|
    k8s_worker02.vm.box = "ubuntu/focal64"
    k8s_worker02.vm.hostname = "k8s_worker02"
    k8s_worker02.vm.network "private_network", ip: "192.168.101.20"
    k8s_worker02.vm.provision "shell", path: "generate_hosts.sh"
  end
  
end
