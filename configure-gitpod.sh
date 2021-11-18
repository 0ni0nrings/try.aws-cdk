#!/bin/bash
ROOT_DIR=`pwd`
cd /opt
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
pip3 install boto
pip3 install boto3
pip3 install botocore
python3 -m pip install --upgrade pip
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
npm install -g aws-cdk
npm install -g aws-cdk@next
cd $ROOT_DIR
