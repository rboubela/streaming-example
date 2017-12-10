#!/bin/bash

# delete topic
kafka_2.11-0.10.0.0/bin/kafka-topics.sh --delete --zookeeper localhost:2181 --topic nycitibike-stations
