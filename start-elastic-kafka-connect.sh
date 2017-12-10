#!/bin/bash

# start elastic kafka connect
./kafka_2.11-0.10.0.0/bin/connect-standalone.sh kafka_2.11-0.10.0.0/config/connect-standalone.properties kafka_2.11-0.10.0.0/config/elasticsearch-connect.properties &

