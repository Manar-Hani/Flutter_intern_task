
import 'package:flutter/material.dart';
import 'package:inova_intern_app/ui/TapPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      theme: new ThemeData(
          primarySwatch: Colors.lightBlue),
      home: new TabPage(),

    );
  }
}

  