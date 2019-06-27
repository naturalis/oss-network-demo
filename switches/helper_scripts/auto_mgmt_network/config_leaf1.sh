#!/bin/bash

echo "#################################"
echo "  Running Extra_Switch_Config.sh"
echo "#################################"
sudo su

echo "retry 1;" >> /etc/dhcp/dhclient.conf

cat <<EOT > /etc/network/interfaces
auto lo
iface lo inet loopback

auto vagrant
iface vagrant inet dhcp

auto eth0
iface eth0 inet dhcp

EOT

mkdir /home/cumulus/.ssh
echo "ssh-rsa " >> /home/cumulus/.ssh/authorized_keys
chmod 700 -R /home/cumulus
chown -R cumulus:cumulus /home/cumulus
chmod 600 /home/cumulus/.ssh/*
chmod 700 /home/cumulus/.ssh

echo "#################################"
echo "   Finished"
echo "#################################"