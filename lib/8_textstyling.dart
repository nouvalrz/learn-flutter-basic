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
          title: const Text("Latihan TextStyle"),
        ),
        body: const Center(
            child: Text(
          "Ini tulisan dengan styling",
          style: TextStyle(
              fontFamily: "IBMPlexSansArabic",
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.black87,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.dashed),
        )),
      ),
    );
  }
}
