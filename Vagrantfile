Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.provision "docker",
    images: ["ubuntu"]

  config.vm.network :forwarded_port, host: 8080, guest: 8080
  config.vm.provision "shell",
    inline: "cd /vagrant && docker build -t mine . && docker run -d -p 8080:8080 mine"
end