#!/usr/bin/env bash

mkdir -p nginx

rm -f nginx/dhparam.pem nginx/self-signed.crt nginx/self-signed.key

# create a ssl certificate
sudo openssl req \
  -x509 -nodes -days 365 -newkey rsa:2048 \
  -subj "/CN=localhost" \
  -config nginx/openssl.cnf \
  -keyout nginx/self-signed.key \
  -out nginx/self-signed.crt

# create a Diffie-Hellman key pair
sudo openssl dhparam -out nginx/dhparam.pem 128

# add certificate to the trusted root store
sudo security add-trusted-cert \
  -d -r trustRoot \
  -k /Library/Keychains/System.keychain nginx/self-signed.crt
