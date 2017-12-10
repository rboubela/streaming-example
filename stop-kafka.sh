#!/bin/bash

echo "stopping kafka server"
kafka_2.11-0.10.0.0/bin/kafka-server-stop.sh

echo "stopping zookeeper server"
kafka_2.11-0.10.0.0/bin/zookeeper-server-stop.sh


