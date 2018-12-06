#!/bin/bash
# Ejemplo de peticion web completa y bien formada con el comando curl
# Peticion por ejemplo a la url http://192.168.1.1
# www.hackingyseguridad.com

curl --insecure --silent --compressed \
-H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0" \
-H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8" \
-H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" \
-H "Accept-Encoding: gzip, deflate, br" \
-H "Connection: keep-alive" \
-H "Upgrade-Insecure-Requests: 1" \
"http://192.168.1.1"
