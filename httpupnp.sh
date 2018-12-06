SOAP_NAT.xml
<?xml version=”1.0” encoding=”utf-8”?>
<s:Envelope s:encodingStyle=”http://schema.xmlsoap.org/soap/encoding/”
xmlns:s=”http://schemas.xmlsoap.org/soap/envelopes/”>
 <s:Body>
 <u:AddPortMapping xmlns:u=”urn:schemas-upnp-org:services:WANIPConnections:1”>
 <NewRemoteHost></NewRemoteHost>
 <NewExternalPort>5555</NewExternalPort>
 <NewInternalClient>192.168.0.1</NewInternalClient>
 <NewInternalPort>80</NewInternalPort>
 <NewProtocol>TCP</NewProtocol>
 <NewPortMappingDescription>i_want_admin</NewPortMappingDescription>
 <NewLeaseDuration>10</NewLeaseDuration>
 <NewEnabled>1</NewEnabled>
 </u:AddPortMapping>
 </s:Body>
</s:Envelope>

httpupnp.sh
curl -v \
 -X ‘POST’ \
 -H ‘Content-Type: text/xml; charset=”utf-8”’ \
 -H ‘Connection: close’ \
 -H ‘SOAPAction: “urn:schemas-upnp-org:services:WANIPConnections:1
 #AddPortMapping”’ \
 --data @SOAP_NAT.xml \
 “http://X.X.X.X:52869/upnp/control/WANIPConnection”
