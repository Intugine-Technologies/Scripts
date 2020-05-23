#!/bin/bash
echo "[Start] Installation of Certbot"
apt-get -y update
apt-get install -y software-properties-common
add-apt-repository universe -y
add-apt-repository ppa:certbot/certbot -y
apt-get -y update
apt-get install -y certbot python3-certbot-nginx
echo "[End] Installation of Certbot"