#!/bin/bash

# start console consumer
kafka_2.11-0.10.0.0/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic nycitibike-stations --from-beginning

