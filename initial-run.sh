#!/bin/bash

echo "bootstrap your environment"
./bootstrap.sh

echo "start all services"

echo "starting kafka"
./start-kafka.sh

echo "starting elastic and kibana"
./start-elastic-kibana.sh

echo "configure kafka topic and kafka-connect"
./configure-all.sh

echo "starting elastic-kafka-connect"
./start-elastic-kafka-connect.sh

echo "starting NYCBProducer"
./start-NYCBProducer.sh


