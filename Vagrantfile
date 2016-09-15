# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "4096"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "dummy.yaml"
    ansible.verbose = 'v'
  end
end
