#!/bin/bash

echo "creating kafka topic"
./create-topic-nycb-stations.sh

echo "create kafka-elastic-connect config"
./create-kafka-elastic-connect-config.sh

