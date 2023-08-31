#!/bin/bash

urls=$(./youtube-dl --flat-playlist  "$1" --dump-json --quiet --no-warnings | jq -r '.url')

echo "videos:"
for url in $urls; do
    id=$(echo "$url" | sed -n 's/.*v=\([^&]*\).*/\1/p')
    echo "  - url: $url"
    echo "    id: $id"
    echo "    thumbnail: https://i1.ytimg.com/vi/$id/mqdefault.jpg"
done