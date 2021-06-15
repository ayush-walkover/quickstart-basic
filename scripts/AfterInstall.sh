#!/bin/bash
################################################################
# After Install Bash script to configure Segmento Dev Server
################################################################


echo "::::::::::::::::::::::::::Setting Permissions:::::::::::::::::::::::::"
sudo chown -R $USER:$USER /var/www/html
sudo chmod -R 755 /var/www/html
cd /var/www/html
php composer.phar install
chmod 755 storage
php artisan config:clear
php artisan config:cache

echo"::::::::::::::::::::::::::Database Setup::::::::::::::::::::::::::::::"
php artisan migrate
php artisan db:seed

echo "::::::::::::::::::::::::::Server Applications::::::::::::::::::::::::::"
