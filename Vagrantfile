# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/provision", type: "rsync"

  # define mannsory 
  config.vm.define "manns" do |manns|
    manns.vm.hostname = "manns1"
    manns.vm.box = "debian/buster64"
    manns.vm.network "private_network",type: "dhcp"
    manns.vm.provision "ansible" do |ansible|
      ansible.playbook = "../../playbooks/common.yml"
    end
  end
end
