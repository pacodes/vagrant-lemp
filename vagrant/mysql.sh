#!/usr/bin/env bash

if [ ! -e /etc/vagrant/mysql ]
then

	echo ">>> setting up mysql"

	# install mysql-server 5.5 & php7.1-mysql
	debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password password'
	debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password password'
	apt-get install -y mysql-server-5.5
	apt-get install -y php7.1-mysql

	# make MySQL external accessible
	mysql -uroot -ppassword -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';"
	mysql -uroot -ppassword -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'password';"
	sed -i 's/^bind-address/#bind-address/' /etc/mysql/my.cnf
	sed -i 's/^skip-external-locking/#skip-external-locking/' /etc/mysql/my.cnf
	service mysql restart

	# only run once
	touch /etc/vagrant/mysql

else

	echo ">>> mysql already setup..."

fi
