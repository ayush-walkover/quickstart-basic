#!/bin/bash
########################################################################
# Before Install Bash script to configure Segmento Development Server
########################################################################

echo "::::::::::::::::::::::::::Install composer at the required location::::::::::"
cd /var/www/html
wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
