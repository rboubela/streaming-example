package com.example.elastic

import org.apache.spark.sql.SparkSession

import org.elasticsearch.spark._
import org.elasticsearch.spark.sql._

object ElasticSpark {

  def main(args: Array[String]): Unit = {
    val appName = "ES connect"
    val master = "local[*]"

    val spark = SparkSession
      .builder()
      .master(master)
      .appName(appName)
      .getOrCreate()

    val df = spark.read.format("org.elasticsearch.spark.sql").load("nycitibike-stations/station")

    df.printSchema()
  }
}
