#! /bin/bash

echo "1/3 Starting the build of th react application..."
npm install

echo "2/3 Starting the build of th react application..."
npm run build

echo "3/3 Packing the application into a dockert image..."
docker build . -t star-wars-server

echo "Completed."