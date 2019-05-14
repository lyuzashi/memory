#!/usr/bin/env bash
cd /var/www/html/keeweb
git fetch origin gh-pages
git reset --hard origin/gh-pages
git checkout origin/gh-pages
sed -i 's/(no-config)/config.json/g' index.html 
