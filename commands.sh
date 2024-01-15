#!/bin/bash

echo "Atualiza o servidor ..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Instala o servidor web apache ..."
sudo apt-get install apache2 -y

echo "Clonando repositório ..."
sudo git clone https://github.com/ostreicher1986/site_html_css.git
cd site_html_css
sudo cp -R * /var/www/html/

echo "IP do servidor ..."
ip a