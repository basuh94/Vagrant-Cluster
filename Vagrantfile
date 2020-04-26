# -*- mode: ruby -*-
# vi: set ft=ruby :

#Variable con el Box que se va a utilizar
BOX = "ubuntu/trusty64"

#Variable con la interfaz
NIC = "Realtek PCIe GbE Family Controller"

Vagrant.configure("2") do |config|



        config.vm.define "master" do |master|
                master.vm.box = BOX
                master.vm.hostname = 'master'

                #Configuración de la interfaz de red
                #master.vm.network "private_network", ip: "192.168.33.10"
                #master.vm.network "public_network", bridge: NIC, use_dhcp_assigned_default_route: true
                master.vm.network "public_network", bridge: NIC, ip: "192.168.1.30"
                #Post script de configuración
                #master.vm.provision "shell", path: "config.sh"

                #Configuración de la máquina virtual
                config.vm.provider :virtualbox do |vb|
                        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
                        vb.customize ["modifyvm", :id, "--memory", 1024]
                        #vb.customize ["modifyvm", :id, "--name", "master"]
                        vb.customize ["modifyvm", :id, "--cpus", "2"]
                end
        end

        config.vm.define "node1" do |node1|
                node1.vm.box = BOX
                node1.vm.hostname = 'node1'
                node1.vm.network "public_network", bridge: NIC, ip: "192.168.1.31"

                #node1.vm.provision "shell", path: "config.sh"
                
                node1.vm.provider :virtualbox do |vb|
                        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
                        vb.customize ["modifyvm", :id, "--memory", 1024]
                        #vb.customize ["modifyvm", :id, "--name", "node1"]
                        
                end
        end

        config.vm.define "node2" do |node2|
                node2.vm.box = BOX
                node2.vm.hostname = 'node2'

                node2.vm.network "public_network", bridge: NIC, ip: "192.168.1.32"

                #node2.vm.provision "shell", path: "config.sh"

                node2.vm.provider :virtualbox do |vb|
                        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
                        vb.customize ["modifyvm", :id, "--memory", 1024]
                        #vb.customize ["modifyvm", :id, "--name", "node2"]
                end
        end
end