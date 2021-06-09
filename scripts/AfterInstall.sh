#!/bin/bash
# Set permissions to storage and bootstrap cache
sudo chmod -R 0777 /var/www/html/storage
sudo chmod -R 0777 /var/www/html/bootstrap/cache
#
# cp .env.example .env
# Run composer
sudo composer install
sudo php artisan config:clear
sudo php artisan cache:clear
sudo php artisan migrate
sudo php artisan db:seed
#
# Run artisan commands
#php artisan key:generate