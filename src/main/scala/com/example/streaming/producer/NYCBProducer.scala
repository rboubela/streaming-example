package com.example.streaming.producer

import java.util.Properties

import at.ac.fhwn.streaming.NYCBikeStations
import com.example.streaming.NYCBikeStations
import org.apache.kafka.clients.producer.{KafkaProducer, Producer, ProducerRecord}
import play.api.libs.json.JsArray

/**
  * Created by roland on 04.02.17.
  */
object NYCBProducer {

  def main(args: Array[String]): Unit = {

    val props: Properties = new Properties()
    props.put("bootstrap.servers", "localhost:9092")
    props.put("acks", "all")
    props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer")
    props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer")

    val producer: Producer[String, String] = new KafkaProducer[String, String](props)

    while (true) {

      // get live data from nycitibike stations feed
      val json = NYCBikeStations.getLiveFeedJson()
      val timestamp: Long = System.currentTimeMillis / 1000

      val stationList = (json \ "stationBeanList").get.as[JsArray]

      stationList.value.foreach{station =>
        // write each 'lines' element in json format to Kafka topic
        val record = new ProducerRecord[String, String]("nycitibike-stations", timestamp.toString, station.toString())
        producer.send(record)
      }

      Thread.sleep(3000L)
    }

    producer.close()

  }

}
