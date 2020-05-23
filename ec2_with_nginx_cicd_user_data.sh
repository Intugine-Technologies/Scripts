#!/bin/bash
# exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
export DEBIAN_FRONTEND=noninteractive



###################	Execution	#####################
apt-get -y update && apt-get -y upgrade && apt-get -y autoremove
cd /home/ubuntu && mkdir http-server && cd /tmp
. ./setup_nginx_basic_http_server.sh # Nginx Setup
. ./install_certbot.sh #Certbot
. ./install_aws_code_deploy_agent.sh #AWS Code Deploy
