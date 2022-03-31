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
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: const Text("Tambah"),
                onPressed: () => setState(() {
                  widgets.add(Text("Data ke-" + counter.toString()));
                  counter++;
                }),
              ),
              ElevatedButton(
                child: Text("Kurang"),
                onPressed: () => setState(() {
                  if (widgets.isNotEmpty) {
                    counter--;
                    widgets.removeLast();
                  }
                }),
              ),
              Text(widgets.length.toString())
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ]),
      ),
    );
  }
}
