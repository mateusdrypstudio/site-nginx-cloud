#!/bin/bash

echo "Atualizando código do GitHub..."
git pull

echo "Copiando arquivos para o Nginx..."
sudo cp -r * /usr/share/nginx/html/

echo "Ajustando permissões..."
sudo chown -R nginx:nginx /usr/share/nginx/html/

echo "Reiniciando o Nginx..."
sudo systemctl restart nginx

echo "Deploy concluído!"
