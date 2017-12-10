#!/bin/bash

git clone -b 0.10.0.0 https://github.com/confluentinc/kafka-connect-elasticsearch.git ../kafka-connect-elasticsearch

cd ../kafka-connect-elasticsearch/

mvn clean package

# copy kafka-connect-elasticsearch to libs directory of kafka
cp target/kafka-connect-elasticsearch-3.2.0-SNAPSHOT-package/share/java/kafka-connect-elasticsearch/* ../streaming-example/kafka_2.11-0.10.0.0/libs/.