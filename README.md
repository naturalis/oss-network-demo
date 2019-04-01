# oss-network-demo

Try an open source software based network, using OPNsense and Cumulus.

### Update Ansible on oob-mgmt-server, install lxml

```bash
yes | sudo apt-add-repository ppa:ansible/ansible && \
sudo apt update && \
sudo apt install -y ansible && \
sudo pip install lxml
```

### Install vagrant-vbguest plugin
```bash
wget -c https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.deb
sudo dpkg -i vagrant_2.2.4_x86_64.deb
vagrant plugin install vagrant-vbguest
```

### Run ansible commands from oob-mgmt-server

    ansible -c paramiko -m command -a "uptime" firewall1
    ansible all -c paramiko -m shell -a 'uptime' -l firewall1

    # Delete default route learned by virtualbox dhcp:
    ansible all -m shell -a 'sudo ip route del default dev vagrant' -l spine*

    # Deploy firewall1:
    ansible-playbook -c paramiko firewalls.yml -l firewall1 --skip-tags vlans

    # Deploy firewall2 and firewall3:
    ansible-playbook -c paramiko firewalls.yml -l firewall2,firewall3

    # Deploy Cumulus spines:
    ansible-playbook switches.yml -l spine*

    # Deploy Cumulus leafs:
    ansible-playbook switches.yml -l leaf*


### VirtualBox commands
    vboxmanage showvminfo 1552905337_firewall2
