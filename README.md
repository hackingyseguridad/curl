# #curl

#Peticiones WEB elaboradas con curl simulando un navegador 

https://linux.die.net/man/1/curl

GET:

with JSON:

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://hostname/resource
with XML:

curl -H "Accept: application/xml" -H "Content-Type: application/xml" -X GET http://hostname/resource
POST:

For posting data:

curl --data "param1=value1&param2=value2" http://hostname/resource
For file upload:

curl --form "fileupload=@filename.txt" http://hostname/resource
RESTful HTTP Post:

curl -X POST -d @filename http://hostname/resource
For logging into a site (auth):

curl -d "username=admin&password=admin&submit=Login" --dump-header headers http://localhost/Login
curl -L -b headers http://localhost/
Pretty-printing the curl results:

For JSON:

If you use npm and nodejs, you can install json package by running this command:

npm install -g json
Usage:

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://hostname/resource | json
If you use pip and python, you can install pjson package by running this command:

pip install pjson
Usage:

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://hostname/resource | pjson
If you use Python 2.6+, json tool is bundled within.

Usage:

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://hostname/resource | python -m json.tool
If you use gem and ruby, you can install colorful_json package by running this command:

gem install colorful_json
Usage:

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://hostname/resource | cjson
If you use apt-get (aptitude package manager of your Linux distro), you can install yajl-tools package by running this command:

sudo apt-get install yajl-tools
Usage:

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://hostname/resource |  json_reformat
For XML:

If you use *nix with Debian/Gnome envrionment, install libxml2-utils:

sudo apt-get install libxml2-utils
Usage:

curl -H "Accept: application/xml" -H "Content-Type: application/xml" -X GET http://hostname/resource | xmllint --format -
or install tidy:

sudo apt-get install tidy
Usage:

curl -H "Accept: application/xml" -H "Content-Type: application/xml" -X GET http://hostname/resource | tidy -xml -i -
Saving the curl response to a file

curl http://hostname/resource >> /path/to/your/file
or

curl http://hostname/resource -o /path/to/your/file
For detailed description of the curl command, hit:

man curl
For details about options/switches of the curl command, hit:

curl -h
