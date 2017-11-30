#!/bin/bash

yum install epel-release -y
yum install postfix dovecot telnet squirrelmail openssl -y
mkdir /etc/postfix/ssl
cd /etc/postfix/ssl
openssl req -x509 -nodes -newkey rsa:2048 -keyout server.key -out server.crt -nodes -days 365
cp server.key /etc/pki/tls/private/ca.key
cp server.crt /etc/pki/tls/certs/ca.crt
ls /etc/pki/tls/certs
ls /etc/pki/tls/private
