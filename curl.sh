#!/bin/bash
curl --insecure --silent --compressed \
-H "Accept: */*" \
-H "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36" \
-H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8" \
-H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" \
-H "Accept-Encoding: gzip, deflate, br" \
-H "Connection: keep-alive" \
-H "Upgrade-Insecure-Requests: 1" \
-H "Authorization: Basic $( (echo -ne 'admin:12345'; ) | base64 -w 0 )" http://192.168.1.254/index.html?
