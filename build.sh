#!/bin/bash
set -x
echo "Listing worksapce"
echo "$(pwd)"
cd ./calculator || return 1
echo "$(pwd)"
echo "$(ls -lah)"
echo "Building using docker"
docker run  -v ${{ github.workspace }}:/app node:15 /bin/bash -c "npm install && yarn build"
