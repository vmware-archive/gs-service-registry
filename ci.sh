#!/bin/sh

set -e

cd $(dirname $0)

cd complete/greeting-client

mvn clean package
rm -rf target

./gradlew build
rm -rf build

cd ../greeting-service

mvn clean package
rm -rf target

./gradlew build
rm -rf build

cd ../../initial/greeting-client

mvn clean package
rm -rf target

./gradlew build
rm -rf build

cd ../greeting-service

mvn clean package
rm -rf target

./gradlew build
rm -rf build

exit
