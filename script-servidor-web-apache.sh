#!/bin/bash

echo "Atualizando pacotes..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Baixando arquivos da aplicação..."

cd /tmp

#wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

wget https://github.com/IdarlanGomes/memoria/archive/refs/heads/main.zip

unzip main.zip

cd memoria-main

cp -r * /var/www/html/

echo "Processo finalizado."



