package com.example.utils

import play.api.libs.json.{JsValue, Json}

/**
  * Created by roland on 05.02.17.
  */
object io {

  def get(url: String) = scala.io.Source.fromURL(url).mkString

  def parseJson(jsonString: String): JsValue = {
    return Json.parse(jsonString)
  }
}
