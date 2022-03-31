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
        appBar: AppBar(title: const Text("Latihan Container")),
        body: Container(
          color: Colors.red,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.red, Colors.blue]))),
            ),
          ),
        ),
      ),
    );
  }
}
