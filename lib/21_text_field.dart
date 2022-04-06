// ignore_for_file: unnecessary_const

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan TextField'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              onChanged: (value) => setState(() {}),
              controller: textEditingController,
            ),
            Text(textEditingController.text)
          ]),
        ),
      ),
    );
  }
}
