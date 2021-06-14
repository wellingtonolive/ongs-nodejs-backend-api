#!/bin/bash
cd /home/ubuntu/api/
echo "CD executado com sucesso"
sudo rm -Rf /var/www/api
echo "Excluido o diretorio /var/www/ongs e seus arquivos"
sudo mv /home/ubuntu/api/ /var/www/api
echo "Movido a pasta de build para /var/www/ongs"
pm2 startup
pm2 save
pm2 restart all
echo "Processos iniciados e salvados com pm2"
sudo nginx -t
echo "comando NGINX -t executado com sucesso"
sudo systemctl restart nginx
echo "comando NGINX RESTART executado com sucesso"