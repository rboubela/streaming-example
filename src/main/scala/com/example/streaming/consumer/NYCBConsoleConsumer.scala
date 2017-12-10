package com.example.streaming.consumer

import java.util
import java.util.Properties
import scala.collection.JavaConversions._

import org.apache.kafka.clients.consumer.{ConsumerRecords, KafkaConsumer}

import com.example.utils.io.parseJson

/**
  * Created by roland on 05.02.17.
  */
object NYCBConsoleConsumer {

  def main(args: Array[String]): Unit = {

    val props: Properties = new Properties()

    props.put("bootstrap.servers", "localhost:9092")
    props.put("group.id", "test")
    props.put("enable.auto.commit", "true")
    props.put("auto.commit.interval.ms", "1000")
    props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer")
    props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer")

    val consumer: KafkaConsumer[String, String] = new KafkaConsumer[String, String](props)
    consumer.subscribe(util.Arrays.asList("nycitibike-stations"))
    while (true) {
      val records: ConsumerRecords[String, String] = consumer.poll(100)

      // prints kafka records in console: only stationName and lastCommunicationTime
      // does not really make sense
      for (record <- records) {
        println(s"offset = ${record.offset}, key = ${record.key}, value = ${(parseJson(record.value()) \\ "stationName")} + ${(parseJson(record.value()) \\ "lastCommunicationTime")} ")
      }
    }
  }


}
