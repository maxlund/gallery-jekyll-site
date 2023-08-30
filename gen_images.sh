#!/bin/bash

echo "albums:"
for folder in images/*; do
  if [ -d "$folder" ]; then
    album_name=$(basename "$folder")
    echo "  - name: $album_name"
    echo "    images:"
    for image_path in "$folder"/*; do
      image_name=$(basename "$image_path")
      echo "      - name: \"$image_name\""
      echo "        imagePath: \"$image_path\""
    done
  fi
done
