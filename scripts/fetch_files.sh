#!/bin/bash

sudo mkdir -p /var/www/mysite.local

git clone https://github.com/techbeast-org/nginx-basics.git
sudo mv nginx-basics/* /var/www/mysite.local/

echo "Done!"