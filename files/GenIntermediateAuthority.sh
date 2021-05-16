#!/bin/bash

mkdir /ca-stuff/

chgrp ortsoc-admin .
chmod 775 . 

#Generalize Filepaths later.

echo "Generating Intermediate Authority Key"
echo "" 

openssl genrsa -out /ca-stuff/IntermediateCA.key 4096

sudo chmod 0660 /ca-stuff/IntermediateCA.key
sudo chgrp ortsoc-admin /ca-stuff/IntermediateCA.key


echo "Generating Intermediate Authority Certificate Signing Request"
echo ""

openssl req -new -key /ca-stuff/IntermediateCA.key -subj "/C=US/ST=Oregon/L=Corvallis/O=ORTSOC/CN=int_auth" -out /ca-stuff/IntermediateCA.csr


