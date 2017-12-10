#!/bin/bash

# download and extract kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-6.0.1-linux-x86_64.tar.gz
tar -vxf kibana-6.0.1-linux-x86_64.tar.gz

sed -i -e 's$#elasticsearch.url: "http://localhost:9200"$elasticsearch.url: "http://localhost:9200"$' kibana-6.0.1-linux-x86_64/config/kibana.yml

# download and extract elastic
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.0.1.tar.gz
tar -vxf elasticsearch-6.0.1.tar.gz
