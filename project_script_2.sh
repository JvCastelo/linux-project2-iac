#!/bin/bash

echo "Atualizando o servidor..."

apt-get update

apt-get upgrade -y

echo "Instalando o Apache..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Mudando para o diretório /tmp..."

cd /tmp

echo "Baixando aplicação do Github..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo main.zip..."

unzip main.zip

echo "Copiando arquivos para o diretório padrão do apache..."

cp -R linux-site-dio-main/* /var/www/html/

echo "Script finalizado!!!"
