import 'package:flutter/material.dart';
import 'dart:convert';

class WorldTime {

  String location; //location name of the ui
  String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  void getTime() async {

    Response response = await get('http://worldtimeapi.org/api/timezone/Africa/Nairobi');
    Map data = jsonDecode(response.body);
    //print(data);

    //properties form data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    print(datetime);
    print(offset);

    //datetime object
    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));
    print(now);

  }
}