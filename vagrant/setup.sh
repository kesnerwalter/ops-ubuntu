#!/bin/sh

echo "Installing all the things...on vagrant"

sudo apt-get install git emacs24-nox sysstat htop unzip make python-setuptools python-pip fail2ban ntp -y

# https://help.ubuntu.com/community/AutomaticSecurityUpdates
sudo dpkg-reconfigure -plow unattended-upgrades

if [ ! -d /vagrant/lockedbox ]
then
    sudo mkdir /vagrant/lockedbox
    sudo chmod 700 /vagrant/lockedbox
    sudo chown root /vagrant/lockedbox
fi

echo "all done, you should reboot now"
exit 0
