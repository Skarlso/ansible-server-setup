# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :
# Box / OS
VAGRANT_BOX = 'ubuntu/xenial64'

VM_NAME = 'ansible-practice'

Vagrant.configure(2) do |config|
  # Vagrant box from Hashicorp
  config.vm.box = VAGRANT_BOX
  # Actual machine name
  config.vm.hostname = VM_NAME
  # Set VM name in Virtualbox
  config.vm.provider 'virtualbox' do |v|
    v.name = VM_NAME
    v.memory = 2048
  end
  # Ansible provision
  config.vm.provision 'ansible_local' do |ansible|
    ansible.limit = 'all'
    ansible.inventory_path = 'hosts'
    ansible.playbook = 'local.yml'
  end
end
