Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |vb|
    #config.ssh.insert_key = false
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    config.vm.synced_folder "./", "/vagrant", disabled: true
  end

  config.vm.define "dwci1" do |dwci|
    dwci.vm.hostname = "dwci11"
    dwci.vm.box = "bento/ubuntu-20.04"
    dwci.vm.network :private_network, ip: "192.168.60.20"
  end

  config.vm.synced_folder "./wordpress-application", "/wordpress-application"
  config.vm.synced_folder "./wordpress-application/mysql", "/wordpress-application/mysql"
  config.vm.synced_folder "./wordpress-application/wordpress", "/wordpress-application/wordpress"
  config.vm.provision "shell", path: "shell-provision.sh"

  # Provision configuration for Ansible
  config.vm.provision  :ansible do |ansible|
    ansible.playbook = "./ansible-playbooks/playbook.yml"
    ansible.become = true
  end 





  
  
  
  
  
end
