# oss-network-demo

Try an open source software based network, using OPNsense and Cumulus.

### Update Ansible on oob-mgmt-server

```bash
vagrant ssh oob-mgmt-server

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
```


### Install vagrant-vbguest plugin
```bash
wget -c https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.deb
sudo dpkg -i vagrant_2.2.4_x86_64.deb
vagrant plugin install vagrant-vbguest
```

### Install lxml
    apt install python-pip
    pip install lxml


### Run ansible commands from oob-mgmt-server

    ansible -c paramiko -m command -a "uptime" firewall1
    ansible all -c paramiko -m shell -a 'uptime' -l firewall1

    # firewall1
    ansible-playbook -c paramiko firewalls.yml -l firewall1 --skip-tags vlans


### VirtualBox commands
    vboxmanage showvminfo 1552905337_firewall2
