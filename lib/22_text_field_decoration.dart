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
        backgroundColor: Colors.green[600],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Latihan TextField Decoration',
            style: TextStyle(color: Colors.green[600]),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) => setState(() {}),
                  controller: textEditingController,
                  maxLength: 100,
                ),
                Text(textEditingController.text)
              ]),
        ),
      ),
    );
  }
}
