import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Flexible(
              child: Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.green,
                ),
                flex: 1,
              ),
              Flexible(
                child: Container(
                  color: Colors.black,
                ),
                flex: 1,
              ),
              Flexible(
                child: Container(
                  color: Colors.green,
                ),
                flex: 1,
              ),
            ],
          )),
          Flexible(
            child: Container(
              color: Colors.blue,
            ),
            flex: 2,
          ),
          Flexible(
            child: Container(
              color: Colors.red,
            ),
            flex: 1,
          )
        ]),
      ),
    );
  }
}
