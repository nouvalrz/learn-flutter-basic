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
  int number = 0;

  void tekanTombol() {
    setState(() {
      number += 1;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Stateful"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: 12 + number.toDouble()),
            ),
            ElevatedButton(
              child: const Text("Tambah Number"),
              onPressed: tekanTombol,
            ),
            ElevatedButton(
                onPressed: resetNumber, child: const Text("Reset Number"))
          ],
        )),
      ),
    );
  }
}
