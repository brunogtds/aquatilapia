import 'package:flutter/material.dart';

class Diseases extends StatelessWidget {

  final Color color;

  Diseases(this.color);

  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      backgroundColor: color,
      body: new Text("Diseases!!!"),
    );
  }
}