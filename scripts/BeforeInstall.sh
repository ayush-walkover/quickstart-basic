#!/bin/bash

file="/etc/nginx/sites-enabled/default"

if [ -f "$file" ] ; then
    rm "$file"
fi
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer
sudo chmod +x /usr/bin/composer
