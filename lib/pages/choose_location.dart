import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    //simulate network request for a username
    await Future.delayed(Duration(seconds: 3), () {
      print('Jack');
    });

    await Future.delayed(Duration(seconds: 2), () {
      print('Teacher, coder, Networker');
    });

    print('Statement');
  }


  @override

  void initState() {
    super.initState();
    getData();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose A Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
