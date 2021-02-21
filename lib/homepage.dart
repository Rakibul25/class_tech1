import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//             // child: Card(
//             //   elevation: 12,
//             //   shape: RoundedRectangleBorder(
//             //     borderRadius: BorderRadius.circular(24),
//             //   ),
//             //   child: Padding(
//             //     padding: EdgeInsets.all(32),
//             //     child: Column(
//             //       mainAxisSize: MainAxisSize.min,
//             //       //mainAxisAlignment: MainAxisAlignment.center,
//             //       //crossAxisAlignment: CrossAxisAlignment.stretch,

//             //       children: <Widget>[
//             //         //Container(color: Colors.blue, child: Text("Hello User")),
//             //         Icon(Icons.ac_unit),
//             //         // FlutterLogo(size: 48),
//             //         SizedBox(
//             //           height: 10,
//             //         ),
//             //         Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: <Widget>[
//             //             Text(
//             //               'Rakib',
//             //               style: Theme.of(context).textTheme.headline5,
//             //             ),
//             //             Text('Description.....',
//             //                 style: Theme.of(context).textTheme.headline6),
//             //           ],
//             //         ),
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             ),
//       ),
//     );
//   }
// }

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Center(
          child: Card(
            margin: EdgeInsets.all(16),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterLogo(size: 50),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Title of the Card',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text('Some description',
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 36,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
