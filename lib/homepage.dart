import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
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
    return scaffold;
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: SafeArea(
//         child: Center(
//           child: Card(
//             margin: EdgeInsets.all(16),
//             elevation: 12,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24),
//             ),
//             color: Colors.white,
//             child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36),
//               child: Row(
//                 children: [
//                   FlutterLogo(size: 50),
//                   SizedBox(
//                     width: 16,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Text(
//                         'Title of the Card',
//                         style: Theme.of(context).textTheme.headline5,
//                       ),
//                       Text('Some description',
//                           style: Theme.of(context).textTheme.headline6),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Icon(
//                     Icons.navigate_next,
//                     size: 36,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
