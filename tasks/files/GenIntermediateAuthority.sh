#!/bin/bash

mkdir /ca-stuff/

#Generalize Filepaths later.

echo "Generating Intermediate Authority Key"
echo "" 

openssl genrsa -out /ca-stuff/IntermediateCA.key 4096

echo "Generating Intermediate Authority Certificate Signing Request"
echo ""

openssl req -new -key /ca-stuff/IntermediateCA.key -subj "/C=US/ST=Oregon/L=Corvallis/O=ORTSOC/CN=int_auth" -out /ca-stuff/IntermediateCA.csr


