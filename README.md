# Vagrant Debian LEMP

Basic PHP, MySql and Nginx Vagrant box.

## Getting started

- clone this repository
- execute `vagrant up`
- in your `/etc/hosts` create an entry for `192.168.100.100 example.loc`
- visit http://example.loc in your browser

## Package versions
- debian/8.10 jessie
- nginx/1.6.2
- php/7.1.16
- mysql/5.5.59 (-u root -p password)
- composer/1.6.4
- mc/4.8.13

## Editing php files

PHP files live within the `web` directory.
