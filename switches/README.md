# How to build Vagrantfile

Clone repo

    cd ~/
    git clone https://github.com/naturalis/oss-network-demo
    cp oss-network-demo/demo.dot .
    git clone -b v4.7.0 https://github.com/CumulusNetworks/topology_converter
    python3 topology_converter.py ../demo.dot -c
    cp -r helper_scripts ../oss-network-demo/switches
    cp -r Vagrantfile ../oss-network-demo/switches
 
After building Vagrantfile add to Vagrantfile:

    config.vbguest.auto_update = false

Add to topology_converter/helper_scripts/auto_mgmt_network/dhcpd.hosts:

    host firewall1 {hardware ethernet 08:00:27:DE:D4:65; fixed-address 192.168.200.50;  } 

    host firewall2 {hardware ethernet 08:00:27:D6:D8:81; fixed-address 192.168.200.60;  } 

    host firewall3 {hardware ethernet 08:00:27:9B:2A:AC; fixed-address 192.168.200.70;  } 



