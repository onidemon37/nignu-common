# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/provision", type: "rsync"

  # define mannsory 
  config.vm.define "manns" do |manns|
    manns.vm.hostname = "manns1"
    manns.vm.box = "generic/ubuntu2004"
    manns.vm.network "private_network",type: "dhcp"
    manns.vm.provision "ansible" do |ansible|
      ansible.playbook = "../../../playbooks/raspberry.yml"
    end
  end
  config.vm.define "archtest" do |archtest|
    archtest.vm.hostname = "archtest"
    archtest.vm.box = "archlinux/archlinux"
    archtest.vm.network "private_network",type: "dhcp"
    archtest.vm.provision "ansible" do |ansible|
      ansible.playbook = "../../../playbooks/raspberry.yml"
    end
  end
end
