import 'package:flutter/material.dart';
import 'package:flutter_guide4/pages/choose_location.dart';
import 'package:flutter_guide4/pages/home.dart';
import 'package:flutter_guide4/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
