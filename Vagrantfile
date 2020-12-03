Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-20.04"
  config.vm.box_check_update = false

  #test
  #test test
  #config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.60.20"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./wordpress-application", "/wordpress-application"
  
  # Provision configuration for Ansible
  config.vm.provision  :ansible do |ansible|
    ansible.playbook = "./ansible-playbooks/playbook.yml"
    ansible.become = true
  end 
  
end
