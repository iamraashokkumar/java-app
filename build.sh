#!/bin/bash
version=`grep -i version properties | cut -f2 -d '='`
echo $version
echo "Build the Java application"
docker build -t iamraashoka/java-app:$version .
echo "Push the $version to docker hub"
docker push iamraashoka/java-app:$version
echo "Run the docker with $version"
docker run -dit --name java-app iamraashoka/java-app:$version
