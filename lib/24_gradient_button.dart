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
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan InkWell'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text(random.nextInt(99999).toString()),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red, onPrimary: Colors.white),
              ),
              DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Colors.blueAccent,
                        Colors.redAccent,
                        Colors.purpleAccent
                        //add more colors
                      ]),
                      borderRadius: BorderRadius.circular(5),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: <BoxShadow>[
                        const BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.57), //shadow for button
                            blurRadius: 5) //blur radius of shadow
                      ]),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        //make color or elevated button transparent
                      ),
                      onPressed: () {
                        print("You pressed Elevated Button");
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                        ),
                        child: Text("Press This Button"),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
