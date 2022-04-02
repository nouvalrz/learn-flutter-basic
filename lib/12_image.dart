import 'dart:math';
import 'dart:ui';

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
        appBar: AppBar(
          title: const Text('Latihan Image'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              child: const Image(
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeatY,
                image: NetworkImage(
                    'https://www.ilmubahasainggris.com/wp-content/uploads/2017/03/NGC.jpg'),
              ),
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(20),
            ),
            Container(
              child: const Image(image: const AssetImage('images/kue.jpg')),
              width: 300,
              height: 300,
              color: Colors.yellow[300],
            )
          ],
        )),
      ),
    );
  }
}
