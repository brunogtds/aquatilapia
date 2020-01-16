
import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

import 'diseases.dart';
import 'about.dart';



class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

 
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

 
  final List<Widget> _children = [

    PlaceholderWidget(Colors.white),
    Diseases(Colors.lightBlue[100]),
    About(Colors.lightBlue[100])
  ];
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('AquaTilápia'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            title: Text('Doenças'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Sobre')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    }); 
  }
}