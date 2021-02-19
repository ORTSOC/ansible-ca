#!/bin/bash

mkdir /ca-stuff
chmod 777 /ca-stuff

echo "Generating Root Key"
echo ""
sudo openssl genrsa -out /ca-stuff/RootCA.key 4096



echo "Generating and Self-signing Root CA certificate"
echo ""

sudo openssl req -new -x509 -days 3650 -key /ca-stuff/RootCA.key -subj "/C=US/ST=Oregon/L=Corvallis/O=ORTSOC/CN=root_auth" -out /ca-stuff/RootCA.crt 


