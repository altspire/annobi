Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567
  config.vm.network :forwarded_port, guest: 50070, host: 50070
  config.vm.network :forwarded_port, guest: 50075, host: 50075
  config.vm.network :forwarded_port, guest: 8088, host: 8088
  config.vm.network :forwarded_port, guest: 8042, host: 8042
  config.vm.network :forwarded_port, guest: 19888, host: 19888

  config.vm.provider "virtualbox" do |v|
  	v.memory = 8192
  	v.cpus = 2
end
end