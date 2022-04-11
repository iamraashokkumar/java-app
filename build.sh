#!/bin/bash
version=`grep -i version properties | cut -f2 -d '='`
echo $version

docker build -t iamraashoka/java-app:$version .
docker push iamraashoka/java-app:$version
