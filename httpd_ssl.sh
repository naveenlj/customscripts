#!/bin/bash

yum install mod_ssl openssl -y 

mkdir /etc/httpd/ssl
cd /etc/httpd/ssl

echo -e "Enter your virtual host FQDN: \nThis will generate the default name for Apache SSL Certificate and Key!"
read cert

openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $cert.key
chmod 600 $cert.key
openssl req -new -key $cert.key -out $cert.csr
openssl x509 -req -days 365 -in $cert.csr -signkey $cert.key -out $cert.crt

echo -e " The Certificate and Key for $cert has been generated!\nPlease link it to Apache SSL available website!"
ls -all /etc/httpd/ssl
exit 0
