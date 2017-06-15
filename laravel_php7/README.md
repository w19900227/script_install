## How to install Laravel 5.* , Nginx and php 7 on Ubnutn
1. [參考連結](https://asked.io/how-to-install-php-7-x--nginx-1-9-x---laravel-5-x)

--------
## Install git 
	sudo apt-get install -y git
	
--------

## Install php 7
	sudo su
	add-apt-repository ppa:ondrej/php
	apt-get install software-properties-common
	apt-get install python-software-properties

	echo 'deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx' >> /etc/apt/sources.list

	echo 'deb-src http://nginx.org/packages/mainline/ubuntu/ trusty nginx' >> /etc/apt/sources.list
	wget -q -O- http://nginx.org/keys/nginx_signing.key | sudo apt-key add -

	apt-get update
	apt-get -y install nginx php7.0 php7.0-mysql php7.0-mbstring php7.0-xml php7.0-curl


--------

## Install php7.0-fpm
	sudo apt-get install -y php7.0-fpm

#### Configure PHP 7
	sudo vim /etc/php/7.0/fpm/php.ini


#### And uncomment and fix cgi.fix_pathinfo=1 to cgi.fix_pathinfo=0
	cgi.fix_pathinfo=0
or 

	echo 'cgi.fix_pathinfo=0' >> /etc/php/7.0/fpm/php.ini



#### Restart PHP 7.0 FPM
	sudo service php7.0-fpm restart

--------

## Install nginx
	sudo apt-get install nginx

#### Restart nginx
	sudo service nginx restart


--------
## Install Composer
	cd ~
	curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer


--------
## Install Laravel
#### How to use composer to create laravel
	sudo composer create-project laravel/laravel ~/blog "5.3.*"


--------
#### Setting the permissions right for the Laravel folders.
	sudo chgrp -R www-data ~/blog
	sudo chmod -R 775 ~/blog/storage

--------
#### Show PHP version
	php -v