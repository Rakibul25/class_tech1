import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Widget cir = new Container(
    //   width: 20.0,
    //   height: 20.0,
    //   decoration: new BoxDecoration(
    //     color: Colors.orange,
    //     shape: BoxShape.circle,
    //   ),
    // );
    return Scaffold(
      body: SafeArea(
        child: Card(
          margin: EdgeInsets.all(16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          color: Colors.lightGreen,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [recir(), recir(), recir()]),
          ),
        ),
      ),
    );
  }
}

Widget recir() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 40.0,
      height: 40.0,
      decoration: new BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    ),
  );
}
