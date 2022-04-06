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
        title: const Text('Latihan AppBar'),
        leading: const Icon(
          Icons.accessibility_sharp,
          color: Colors.white,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_tree_sharp,
              color: Colors.white,
            ),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_tree_sharp,
              color: Colors.white,
            ),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_tree_sharp,
              color: Colors.white,
            ),
          ),
        ],
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient:
                    const LinearGradient(colors: [Colors.blue, Colors.red]))),
      )),
    );
  }
}
