import 'package:flutter/material.dart';
import 'package:datepicker/Src/Homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Datepicker',
      home: Homepage(),
    );
  }
}
