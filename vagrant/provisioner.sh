#!/usr/bin/env bash

# create a directory '/etc/vagrant' if it doesn't exist

# if you want to run a particular step on a subsequent 'vagrant up', remove the file
# if you want to run all steps on a subsequent 'vagrant up', remove the /etc/vagrant folder

if [ ! -e /etc/vagrant ]
then

	mkdir /etc/vagrant

fi

# make some of our helper scripts executable
chmod a+x /vagrant/vagrant/scripts/reset
chmod a+x /vagrant/vagrant/scripts/run
