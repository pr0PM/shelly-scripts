#!/bin/bash

tmpData=$(mktemp /tmp/htmlTemp.XXX)

curl -s $1 > $tmpData

fileName="$(cat $tmpData | grep -o -P "<title.{0,50}" | cut -d ">" -f2 | cut -d "<" -f1)"
            
cat $tmpData | grep -o -P "track-name\".{11,200}" | cut -d ">" -f2 | cut -d "<" -f1 > "$fileName"

echo "playlist saved as : $fileName"

rm "$tmpData"
