#!/bin/bash
set +x
echo "Listing worksapce"
cd /app/calculator || return 1
echo "$(ls -lah)"
echo "Building using docker"
docker run  -v ${{ github.workspace }}:/app node:15 /bin/bash -c "npm install && yarn build"
