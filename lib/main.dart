import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whtsupp/Screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

