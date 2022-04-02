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
  Random random = Random();
  var color = const Color.fromARGB(255, 255, 0, 0);
  var colorBox = const Color.fromARGB(255, 0, 255, 0);

  void randColor() {
    setState(() {
      color = Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
      colorBox = Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LatihanStackAlign'),
        ),
        body: Stack(children: [
          // background
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: colorBox,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: colorBox,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          ListView(
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                  Text(
                    'Ini adalah text',
                    style: TextStyle(fontSize: 40, color: color),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: const Text(
                'ini tombol',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: randColor,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color)),
            ),
          )
        ]),
      ),
    );
  }
}
