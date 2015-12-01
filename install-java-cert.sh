#!/bin/bash

set -e

if [[ "$1" != "" && "$2" != "" ]]; then
    echo "Pulling SSL cert for $1"

	openssl s_client -connect $1:443 < /dev/null |  openssl x509 > /tmp/cert

    echo "SSL cert successfully pulled.  You will need to enter your account password to add the cert to file: $2"

	sudo keytool -import -keystore $2 -storepass changeit -file /tmp/cert

else
    echo "Usage: install-java-cert.sh <domain> <cacerts_file>"
fi


