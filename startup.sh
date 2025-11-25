#!/bin/bash

# Dosyada zaten "/public;" yazıyor mu kontrol et. 
# Yazmıyorsa değiştir (Böylece /public/public/public döngüsü olmaz)
if ! grep -q "root /home/site/wwwroot/public;" /etc/nginx/sites-available/default; then
    sed -i 's!root /home/site/wwwroot;!root /home/site/wwwroot/public;!g' /etc/nginx/sites-available/default
fi

# Nginx'i yeniden yükle
service nginx reload
