#!/bin/bash
cd /home/ubuntu/api/
echo "CD realizado com sucesso"
sudo rm -R /home/ubuntu/api/
echo "Removendo todos os arquivos do server"
sudo cp -R /var/www/api/ /home/ubuntu/api/$(date +'%Y-%m-%d-%T')
echo "Fonte anterior guardado com sucesso em /home/ubuntu/api/"$(date +'%Y-%m-%d-%T')