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
      home: CustomWidget(),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: manyContainers,
              )
            : Row(
                children: manyContainers,
              ),
      ),
    );
  }

  List<Widget> get manyContainers {
    return [
      GenerateContainer(
        color: Colors.red,
      ),
      GenerateContainer(
        color: Colors.blue,
      ),
      GenerateContainer(
        color: Colors.green,
      ),
    ];
  }
}

class GenerateContainer extends StatelessWidget {
  const GenerateContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 5,
    );
  }
}
