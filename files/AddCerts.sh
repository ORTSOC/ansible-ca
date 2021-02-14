#!/bin/bash

#Generalize Scripts


echo "Copying Root/Intermediate Certificates into /local/share/ca-certificates"
echo ""

sudo mkdir /usr/local/share/ca-certificates/ORTSOC/

sudo cp /ca-stuff/RootCA.crt /usr/local/share/ca-certificates/ORTSOC/
sudo cp /ca-stuff/IntermediateCA.crt /usr/local/share/ca-certificates/ORTSOC/

sudo chmod 755 /usr/local/share/ca-certificates/ORTSOC/
sudo chmod 644 /usr/local/share/ca-certificates/ORTSOC/*

sudo update-ca-certificates
