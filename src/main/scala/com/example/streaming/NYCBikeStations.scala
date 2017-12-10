package com.example.streaming

import com.example.utils.io
import play.api.libs.json.{JsValue, Json}

/**
  * Created by roland on 05.02.17.
  */
object NYCBikeStations {

  private val url = "https://feeds.citibikenyc.com/stations/stations.json"

  def getLiveFeedJson(): JsValue = {
    val rawResponse = io.get (url)
    val json = Json.parse(rawResponse)
    return json
  }

}
