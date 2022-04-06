// ignore_for_file: unnecessary_const

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
        backgroundColor: Colors.green[500],
        body: Container(
          margin: const EdgeInsets.all(10),
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [
            const CustomCard(
              icons: Icons.person,
              text: const Text('Nouval Rizky'),
            ),
            const CustomCard(
              icons: Icons.home,
              text: const Text('Denpasar Selatan'),
            ),
            const CustomCard(
              icons: Icons.phone,
              text: const Text('085156878006'),
            ),
          ]),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.icons,
    required this.text,
  }) : super(key: key);

  final IconData icons;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            // ignore: prefer_const_constructors
            Icon(
              icons,
              // color: Colors.black45,
            ),
            Container(
              child: text,
              margin: const EdgeInsets.only(left: 10),
            )
          ],
        ),
      ),
    );
  }
}
