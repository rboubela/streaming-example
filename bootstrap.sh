#!/bin/bash

echo "downloading and extracting kafka"
./download-kafka-zookeeper.sh

echo "downloading and extracting elastic and kibana"
./download-elastic-kibana.sh

echo "downloading and building elastic-kafka-connect"
./download-build-elastic-kafka-connect.sh

echo "building streaming-example using Maven"
mvn clean package


