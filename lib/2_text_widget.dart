import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Belajar Text')),
          body: Center(
              child: Container(
            child: const Text(
              'Saya',
              maxLines: 2,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontStyle: FontStyle.italic),
            ),
            color: Colors.lightBlue,
            width: 150,
            height: 50,
          ))),
    );
  }
}
