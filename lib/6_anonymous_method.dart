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
  String message = "Ini teks";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Anonymous"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            ElevatedButton(
              child: const Text("Tekan Saya"),
              // Deklarasi anonymous method
              onPressed: () => setState(() => message = "Telah Ditekan"),
            )
          ],
        )),
      ),
    );
  }

  // Deklarasi method biasa
  void tekanTombol() {
    setState(() {
      message = "Telah ditekan";
    });
  }
}
