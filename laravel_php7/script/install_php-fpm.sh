sudo apt-get -y install php7.0-fpm
echo ‘cgi.fix_pathinfo=0’ >> /etc/php/7.0/fpm/php.ini
sudo service php7.0-fpm restart
