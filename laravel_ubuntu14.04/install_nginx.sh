sudo apt-get update
sudo apt-get install -y nginx
sudo cp files/nick /etc/nginx/sites-available/
#sudo ln -s /etc/nginx/sites-available/nick /etc/nginx/sites-enabled/nick
sudo service nginx restart
