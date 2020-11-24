Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  config.vm.network "private_network", ip: "192.168.60.20"
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  

  # Provision configuration for Ansible
  config.vm.provision  :ansible do |ansible|
    ansible.playbook = "./ansible-playbooks/playbook.yml"
    ansible.become = true
  end 
end
