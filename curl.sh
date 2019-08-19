#
# Ver URL https SSL con curl
# https://linux.die.net/man/1/curl
# curl
# -k fuerza a SSL en modo inseguro
# -s --silent muestra en pantalla los datos solicitados
# -vvv Mostrar detalle en el resultado
# -3 sslv3
# -0 http 1.0
# curl --cacert my-ca.crt https://<ip>
#
#
#!/bin/bash
echo "Uso.: ./curl.sh https://url"
curl -k -vvv \
-H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0" \
-H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8" \
-H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" \
-H "Connection: keep-alive" \
"$1"
