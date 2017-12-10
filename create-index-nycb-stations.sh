#!/bin/bash

# create the index for nycitibike-stations
curl -XPUT 'localhost:9200/nycitibike-stations_index?pretty&pretty'
curl -XGET 'localhost:9200/_cat/indices?v&pretty'

