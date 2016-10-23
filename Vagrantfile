Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 80

  config.vm.provider "virtualbox" do |v|
  	v.memory = 2048
  	v.cpus = 1
end
end