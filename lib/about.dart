import 'package:flutter/material.dart';

class About extends StatelessWidget {

  final Color color;

  About(this.color);

  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      backgroundColor: color,
      body: new Text("About!!!"),
    );
  }
}