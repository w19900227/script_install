sudo add-apt-repository ppa:ondrej/php
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties


echo 'deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx' >> /etc/apt/sources.list
echo 'deb-src http://nginx.org/packages/mainline/ubuntu/ trusty nginx' >> /etc/apt/sources.list
wget -q -O- http://nginx.org/keys/nginx_signing.key | sudo apt-key add -

sudo apt-get update
sudo apt-get -y install nginx php7.0 php7.0-mysql php7.0-fpm php7.0-mbstring php7.0-xml php7.0-curl

