Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 30008, host: 1234
  config.vm.network "forwarded_port", guest: 30007, host: 1233
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048" # メモリを2GBに設定
  end
end

