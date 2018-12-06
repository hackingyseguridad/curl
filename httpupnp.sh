curl -v \
 -X ‘POST’ \
 -H ‘Content-Type: text/xml; charset=”utf-8”’ \
 -H ‘Connection: close’ \
 -H ‘SOAPAction: “urn:schemas-upnp-org:services:WANIPConnections:1
 #AddPortMapping”’ \
 --data @SOAP_NAT.xml \
 “http://X.X.X.X:52869/upnp/control/WANIPConnection”
