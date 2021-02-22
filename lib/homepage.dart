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
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Flutter",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    "Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. The first version of Flutter was known as codename and ran on the Android operating system.",
                    style: TextStyle(
                        //backgroundColor: Colors.blue[100],
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue[200],
                  child: Row(
                    children: [
                      starshape(),
                      starshape(),
                      starshape(),
                      starshape(),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue[200],
                  child: Row(children: [
                    likeshape(),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.thumb_down,
                      color: Colors.red,
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget starshape() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Icon(
      Icons.star,
      color: Colors.red,
    ),
  );
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
