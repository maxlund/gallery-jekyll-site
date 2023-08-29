#!/bin/bash
sed -i 's/, /\n/g' URL_FILE.txt
sed -E 's|https://drive\.google\.com/file/d/([a-zA-Z0-9_-]+)/.*|https://drive\.google\.com/uc?id=\1|g' URL_FILE.txt > output.txt