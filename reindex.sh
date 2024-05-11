#!/bin/bash


echo "[" > index.json5
find plugins -type f -name "*.json" -o -name "*.json5" -o -name "*.jsonc" | while read file; do
    file=${file#./}
    echo "\"$file\"," >> index.json5
done
echo "]" >> index.json5