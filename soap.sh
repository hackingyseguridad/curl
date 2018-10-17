# request.xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:wst="http://sensedia.com/repository/wstoolkit">
   <soapenv:Header>
       <wsse:Security soapenv:mustUnderstand="1" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
           <wsse:UsernameToken wsu:Id="UsernameToken-1">
               <wsse:Username>system</wsse:Username>
               <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">manager</wsse:Password>
               <wsse:Nonce EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary">DWk64SMfJ6RxHAKgPRGtPA==</wsse:Nonce>
               <wsu:Created>2013-04-17T18:36:54.013Z</wsu:Created>
           </wsse:UsernameToken>
       </wsse:Security>
   </soapenv:Header>
   <soapenv:Body>
       <wst:search>
           <in>
               <keywords>python</keywords>
               <restrictions>
               <sortBy>DATE</sortBy>
           </in>
       </wst:search>
  </soapenv:Body>
</soapenv:Envelope>

# consulta.sh
ACTION="wst:search"
URL="http://mydomain.com.br/services/queryPort"
curl -H "Content-Type: text/xml; charset=utf-8" -H "SOAPAction:$ACTION" -d@request.xml $URL > output.xml
