import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan AnimatedContainer'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => setState(() {}),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
            ),
          ),
        ),
      ),
    );
  }
}
