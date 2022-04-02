import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: Center(
          child: ElevatedButton(
        child: Text('Back'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
