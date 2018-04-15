#!/usr/bin/env bash

# set timezone to Kiev

if [ ! -e /etc/vagrant/timezone ]
then
    
    echo ">>> setting up timezone Europe/Kiev"

    # set Kiev as the local timezone
    timedatectl set-timezone Europe/Kiev

    # only run once
    touch /etc/vagrant/timezone

else

    echo ">>> timezone is already setup..."

fi
