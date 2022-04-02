import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_first/18_second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MainApp')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Go to second page'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondPage()));
        },
      )),
    );
  }
}
