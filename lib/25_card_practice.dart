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
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const BodyApp(),
    );
  }
}

class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(
            255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
        Color.fromARGB(
            255, random.nextInt(256), random.nextInt(256), random.nextInt(256))
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://source.unsplash.com/1000x1000/?beach')))),
                  Expanded(
                      child: Container(
                    child: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text('Change color')),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
