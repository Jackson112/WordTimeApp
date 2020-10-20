import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:wordtimeapp/services/world_time.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

   void setupWorldTime() async {
     WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Africa/Nairobi');
     await instance.getTime();
     print(instance.time);
     setState(() {
       time = instance.time;

     });
   }

  @override

  void initState() {
    super.initState();
    setupWorldTime();
    print('Hey There');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      )
    );
  }
}
