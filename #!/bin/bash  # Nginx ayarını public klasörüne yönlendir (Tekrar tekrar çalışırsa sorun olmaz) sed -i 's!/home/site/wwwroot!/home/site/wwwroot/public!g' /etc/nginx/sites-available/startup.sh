#!/bin/bash

# Nginx ayarını public klasörüne yönlendir (Tekrar tekrar çalışırsa sorun olmaz)
sed -i 's!/home/site/wwwroot!/home/site/wwwroot/public!g' /etc/nginx/sites-available/default

# Nginx'i yeniden yükle
service nginx reload

# Dağıtım tamamlandı (Azure'un anlaması için)
echo "Custom setup complete."
