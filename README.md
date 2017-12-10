# Streaming Example

## Quickstart

```bash
git clone git@github.com:rboubela/streaming-example.git
cd streaming-example
./initial-run.sh
```

## Description

Streaming example using the live feed of [bikestations](https://feeds.citibikenyc.com/stations/stations.json) of New York City's official bike sharing system.

The example contains:

- A Kafka producer writing the jsons from the feed to a Kafka topic
- The Configuration for an io.confluent.connect.elasticsearch.ElasticsearchSinkConnector connecting Kafka to Elastic
- An example accessing Elastic from Spark
- An example using Spark Streaming consuming a Kafka topic
- Some bash scripts to run everything

## Usage

- initial-run.sh
    * downloads Kafka, Elastic, Kibana, kafka-connect-elasticsearch from Confluent Inc
    * creates a Kafka topic and the configurations for the ElasticsearchSinkConnector
    * starts Kafka, Elastic, Kibana, Kafka Connect, and the Kafka producer
    
  
- start-all.sh: after *initial-run.sh* was successful one can use this script to start everything

- stop-all.sh: stops everythings
