#!/bin/bash

json=$(./youtube-dl --flat-playlist  "$1" --dump-json --quiet --no-warnings)
urls=$(jq -r '.url' <<< "$json" | tr '\r\n' '\n')
names=$(jq -r '.title'  <<< "$json" |tr '\r\n' '\n')

lines=$(paste -d';' <(echo "$urls") <(echo "$names"))
echo "videos:"
while IFS= read -r line; do
    url=$(echo "$line" | cut -d ";" -f 1)
    name=$(echo "$line" | cut -d ";" -f 2)
    id=$(echo "$url" | sed -n 's/.*v=\([^&]*\).*/\1/p')
    echo "  - url: $url"
    echo "    name: $name"
    echo "    id: $id"
    echo "    thumbnail: https://i1.ytimg.com/vi/$id/mqdefault.jpg"
done <<< "$lines"

