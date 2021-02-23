import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
          card1(),
        ],
      )),
    );
  }
}

Widget card1() {
  return Container(
    height: 100,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: Colors.lightGreen,
      child: Text(
        'Hello everyone',
        //textAlign: TextAlign.center,
        textAlign: TextAlign.center,
      ),
    ),
  );
  // return Container(
  //   child Card(
  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  //   color: Colors.lightGreen,
  //   child: Text('Hello everyone'),
  // ),
  //);
}

Widget likeshape() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Icon(
      Icons.thumb_up,
      color: Colors.red,
    ),
  );
}
