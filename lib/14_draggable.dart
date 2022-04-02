import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color color3 = Colors.green;
  Color? targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Draggable'),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Draggable<Color>(
                data: color1,
                child: CircleCustom(
                  color: color1,
                ),
                childWhenDragging: const CircleCustom(color: Colors.black26),
                feedback: CircleCustom(color: color1.withOpacity(0.5)),
              ),
              Draggable<Color>(
                data: color2,
                child: CircleCustom(
                  color: color2,
                ),
                childWhenDragging: const CircleCustom(color: Colors.black26),
                feedback: CircleCustom(color: color2.withOpacity(0.5)),
              ),
              Draggable<Color>(
                data: color3,
                child: CircleCustom(
                  color: color3,
                ),
                childWhenDragging: const CircleCustom(color: Colors.black26),
                feedback: CircleCustom(color: color3.withOpacity(0.5)),
              )
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidates, rejected) {
              return isAccepted
                  ? CircleCustom(
                      color: targetColor ?? Colors.black26,
                      width: 100,
                      height: 100,
                    )
                  : const CircleCustom(
                      color: Colors.black26,
                      width: 100,
                      height: 100,
                    );
            },
          )
        ]),
      ),
    );
  }
}

class CircleCustom extends StatelessWidget {
  const CircleCustom({
    Key? key,
    required this.color,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  final Color color;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.toDouble(),
      height: height.toDouble(),
      child: Material(
        color: color,
        shape: const StadiumBorder(),
        elevation: 3,
      ),
    );
  }
}
