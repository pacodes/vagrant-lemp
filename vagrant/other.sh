#!/usr/bin/env bash

if [ ! -e /etc/vagrant/other ]
then

	echo ">>> setting up mc"

	# install mc
	apt-get install -y mc

	echo ">>> setting up curl"

	# Install curl
	apt-get install -y curl php7.1-curl

	echo ">>> setting up composer"
	
	# Install composer
	curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

	# only run once
	touch /etc/vagrant/other

else

	echo ">>> other scripts already setup..."

fi
