#!/bin/bash
echo "[Start] Installation of Nginx"
apt-get install -y nginx
cat > /etc/nginx/sites-available/default <<EOL
map \$sent_http_content_type \$expires{
	default                 epoch;
	text/html               epoch;
	text/css                epoch;
	application/javascript  epoch;
	~image/                 max;
}
server {
	root /home/ubuntu/http-server;
	index index.html index.htm index.nginx-debian.html;
	server_name _; ###### DOMAIN NAME GOES HERE IN-PLACE OF _ ############
	location / {
		try_files \$uri \$uri/ =404;
	}
	listen 80 ;
	listen [::]:80 ;
	expires \$expires;
}
EOL
systemctl restart nginx
echo "[End] Installation of Nginx"