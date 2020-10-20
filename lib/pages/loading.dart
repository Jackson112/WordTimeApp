import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:wordtimeapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
    Navigator.pushNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });


   }

  @override

  void initState() {
    super.initState();
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitSquareCircle(
          color: Colors.white,
          size: 50.0,
        ),
        ),
      );
  }
}
