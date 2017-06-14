sudo apt-get remove -y "php*"
#sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6 php5.6-fpm php5.6-cli php5.6-mcrypt git
#sudo apt-get install -y php5.6-gd
sudo cp files/php.ini /etc/php5/fpm/php.ini
sudo service php5.6-fpm restart
