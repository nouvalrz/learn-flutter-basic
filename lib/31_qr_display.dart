// ignore_for_file: unnecessary_const, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 6,
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(12),
            size: 300,
            data: 'Halo kucing',
          ),
        ),
      ),
    );
  }
}
