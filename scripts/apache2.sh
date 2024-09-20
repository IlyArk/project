#!/bin/bash

cd /etc/project/Apache2

sudo cp ports.conf /etc/apache2/
sudo cp 000-default.conf /etc/apache2/sites-enabled/

sudo cp log/* /var/log/apache2/
sudo cp -r www/* /var/www/

systemctl restart apache2

sudo cp default.conf /etc/nginx/sites-enabled/