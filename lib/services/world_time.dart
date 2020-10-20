import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


import 'package:http/http.dart';

class WorldTime {

  String location; //location name of the ui
  String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
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

      //set time property
      time = DateFormat.jm().format(now);
    }

    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}


