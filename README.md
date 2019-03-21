# oss-network-demo

Try an open source software based network, using OPNsense and Cumulus.

### Install vagrant-vbguest plugin
```bash
wget -c https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.deb
sudo dpkg -i vagrant_2.2.4_x86_64.deb
vagrant plugin install vagrant-vbguest
```

### Create hostonly network
```bash
vboxmanage hostonlyif create
vboxmanage hostonlyif ipconfig vboxnet0 --ip 192.168.1.1
```
