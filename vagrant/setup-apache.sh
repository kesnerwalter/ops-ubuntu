#!/bin/sh

sudo apt-get install -y apache2 apache2-utils libapache2-modsecurity

sudo apt-get install -y php-cli php-curl php-mcrypt php-memcache mysql-client php-mysql php-json
sudo apt-get install memcached

sudo phpenmod mcrypt

sudo apt-get -y install php

sudo service apache2 restart

exit
