#!/bin/bash

echo "starting kafka"
./start-kafka.sh

echo "starting elastic and kibana"
./start-elastic-kibana.sh

echo "starting elastic-kafka-connect"
./start-elastic-kafka-connect.sh

echo "starting NYCBProducer"
./start-NYCBProducer.sh

