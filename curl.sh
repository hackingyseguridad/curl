#!/bin/bash
# Ejemplo de peticion http con curl bien formada
curl --insecure "http://192.168.1.254/index.html?" -H 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36' -H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8" -H 'Accept-Language: es-ES,es:q=0.5'
