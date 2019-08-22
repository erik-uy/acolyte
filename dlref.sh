#!/bin/sh

curl -X GET --header 'Accept: application/x-zip-compressed' --header 'Authorization: apikey fDHe0e8rguQmXsSYvNn04W4ROqJ8dLt3wIii' 'https://api.transport.nsw.gov.au/v1/publictransport/timetables/complete/gtfs' -o "./public/resources/db.zip" --create-dirs
unzip ./public/resources/db.zip -d ./public/resources/