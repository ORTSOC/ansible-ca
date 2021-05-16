#!/bin/bash

if [ "$#" -ne 3 ];
	then echo "Usage: $0 [certificate name] [CN] [SAN]"
fi

echo "Generating New Certificate signed by Intermediate CA" 
echo ""

serial=`date +%s`


openssl genrsa -aes256 -out /ca-stuff/"$1".key 2048

openssl req -new -key /ca-stuff/"$1".key -subj "/C=US/ST=Oregon/L=Corvallis/O=ORTSOC/CN=$2/subjectAltName=$3" -out /ca-stuff/"$1".csr

openssl x509 -req -in /ca-stuff/"$1".csr -CA /ca-stuff/IntermediateCA.crt -CAkey /ca-stuff/IntermediateCA.key -out /ca-stuff/"$1".crt -days 730 -set_serial $serial 



