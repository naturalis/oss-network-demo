# Build Vagrantfile

    ./topology_converter.py ../demo.dot -c

After building Vagrantfile add to Vagrantfile:
    config.vbguest.auto_update = false

Add to topology_converter/helper_scripts/auto_mgmt_network/dhcpd.hosts:

    host firewall1 {hardware ethernet 08:00:27:DE:D4:65; fixed-address 192.168.200.50;  } 

    host firewall2 {hardware ethernet 08:00:27:D6:D8:81; fixed-address 192.168.200.60;  } 

    host firewall3 {hardware ethernet 08:00:27:9B:2A:AC; fixed-address 192.168.200.70;  } 



