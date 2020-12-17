#! /bin/bash

echo "1/3 Starting the build of th react application..."
npm install

echo "2/3 Starting the build of th react application..."
npm run build

echo "3/4 Packing the application into a dockert image..."
docker build . -t apollo130/star-wars-server:latest

echo "4/4 Pushing to dockert hub..."
docker login -u apollo130 -p $dockerHubPassword
docker push apollo130/star-wars-server:latest

echo "Completed."