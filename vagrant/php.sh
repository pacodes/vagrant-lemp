#!/usr/bin/env bash

if [ ! -e /etc/vagrant/php ]
then

	echo ">>> setting up php"

	# install php 7.1 & php-fpm
	wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
	echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
	apt-get update
	apt-get install -y php7.1 php7.1-fpm

	# update the cgi.fix_pathinfo variable in php.ini
	sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.1/fpm/php.ini

	# only run once
	touch /etc/vagrant/php

else

	echo ">>> php already setup..."

fi
