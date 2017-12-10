#!/bin/bash

# create elasticsearch-connect.properties

echo "
name=elasticsearch-sink
connector.class=io.confluent.connect.elasticsearch.ElasticsearchSinkConnector
tasks.max=1
topics=nycitibike-stations
topic.index.map=nycitibike-stations:nycitibike-stations_index
connection.url=http://localhost:9200
type.name=station
key.ignore=true
schema.ignore=true
" > kafka_2.11-0.10.0.0/config/elasticsearch-connect.properties

echo "
bootstrap.servers=localhost:9092
key.converter=org.apache.kafka.connect.json.JsonConverter
value.converter=org.apache.kafka.connect.json.JsonConverter
key.converter.schemas.enable=false
value.converter.schemas.enable=false
internal.key.converter=org.apache.kafka.connect.json.JsonConverter
internal.value.converter=org.apache.kafka.connect.json.JsonConverter
internal.key.converter.schemas.enable=false
internal.value.converter.schemas.enable=false
offset.storage.file.filename=/tmp/connect.offsets
offset.flush.interval.ms=10000
" > kafka_2.11-0.10.0.0/config/connect-standalone.properties
