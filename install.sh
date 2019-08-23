#!/bin/sh
#npm install -g json-server
#npm install -g csvtojson

#curl -X GET --header 'Accept: application/x-zip-compressed' --header 'Authorization: apikey fDHe0e8rguQmXsSYvNn04W4ROqJ8dLt3wIii' 'https://api.transport.nsw.gov.au/v1/publictransport/timetables/complete/gtfs' -o "./server/resources/db.zip" --create-dirs
unzip -o server/resources/db.zip -d ./server/resources

mkdir -p server/resources/
mkdir -p server/db

sed -i.bak 's/route_id/id/g' server/resources/routes.txt
sed -i.bak 's/stop_id/id/g' server/resources/stops.txt
sed -i.bak 's/trip_id/id/g' server/resources/trips.txt

csvtojson server/resources/routes.txt > server/db/routes.json
csvtojson server/resources/stops.txt > server/db/stops.json
csvtojson server/resources/trips.txt > server/db/trips.json


echo { \"routes\" : > server/db/db.json 
cat server/db/routes.json >> server/db/db.json
echo , \"stops\" : >> server/db/db.json
cat server/db/stops.json >> server/db/db.json
echo , \"trips\" : >> server/db/db.json
cat server/db/trips.json >> server/db/db.json
echo } >> server/db/db.json
