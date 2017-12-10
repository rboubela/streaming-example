#!/bin/bash

# start zookeeper directory
kafka_2.11-0.10.0.0/bin/zookeeper-server-start.sh kafka_2.11-0.10.0.0/config/zookeeper.properties &

# start kafka server
kafka_2.11-0.10.0.0/bin/kafka-server-start.sh kafka_2.11-0.10.0.0/config/server.properties &

