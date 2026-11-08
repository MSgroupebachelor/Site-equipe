#!/bin/bash
# aller dans le dossier du site, sinon arreter le script
cd ~/serveur/site-equipe || exit 1
# recuperer les dernieres modifications depuis GitHub
git pull
# copier les fichiers du site vers le dossier de nginx
sudo cp index.html style.css /var/www/html/
# afficher un message de fin
echo "Deploiement termine"