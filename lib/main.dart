import 'package:flutter/material.dart';
import 'package:wordtimeapp/pages/home.dart';
import 'package:wordtimeapp/pages/loading.dart';
import 'package:wordtimeapp/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      },
  ));

