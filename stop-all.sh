#!/bin/bash

# stop kafka producer
./stop-NYCBProducer.sh

# stop elastic-kafka-connect
./stop-elastic-kafka-connect.sh

# stop elastic and kibana
./stop-kibana.sh
./stop-elastic.sh

# stop kafka
./stop-kafka.sh

