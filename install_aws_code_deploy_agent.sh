#!/bin/bash
echo "[Start] Installation of AWS CodDeploy Agent"
apt-get -y update
apt-get install -y ruby
# cd /tmp
wget -O code_deploy.sh https://aws-codedeploy-ap-south-1.s3.amazonaws.com/latest/install;
chmod +x ./code_deploy.sh
./code_deploy.sh auto
service codedeploy-agent start
echo "[End] Installation of AWS CodDeploy Agent"
