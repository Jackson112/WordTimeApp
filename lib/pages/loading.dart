import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

     Response response = await get('http://worldtimeapi.org/api/timezone/Africa/Nairobi');
     Map data = jsonDecode(response.body);
     //print(data);

     //properties form data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
   // print(datetime);
    print(offset);

    //datetime object
    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));
    print(now);


  }


  @override

  void initState() {
    super.initState();
    getTime();
    print('Hey There');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
