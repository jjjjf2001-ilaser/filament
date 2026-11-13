#!/bin/sh
# Stamp a new build id into index.html and version.json so clients detect the update.
set -e
cd "$(dirname "$0")"
BUILD=$(date +%Y%m%d-%H%M)
SKUS=$(python3 -c "import json;print(len(json.load(open('catalog.json'))))")
sed -i "s/const BUILD='[^']*'/const BUILD='$BUILD'/" index.html
printf '{"build": "%s", "skus": %s}\n' "$BUILD" "$SKUS" > version.json
echo "build $BUILD ($SKUS SKUs)"
