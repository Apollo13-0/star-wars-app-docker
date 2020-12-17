#! /bin/bash

echo "Starting the build of th react application..."
npm run build

echo "Packing the application into a dockert image..."
docker build . -t star-wars-server

echo "Completed."