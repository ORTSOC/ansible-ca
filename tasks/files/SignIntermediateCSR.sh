#!/bin/bash

echo "Signing Intermediate Authority CSR with Root Authority"
openssl x509 -req -days 730 -in /ca-stuff/IntermediateCA.csr -CA /ca-stuff/RootCA.crt -CAkey /ca-stuff/RootCA.key  -CAcreateserial -out /ca-stuff/IntermediateCA.crt

