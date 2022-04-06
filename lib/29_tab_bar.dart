// ignore_for_file: unnecessary_const, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Latihan Tab'),
            bottom: TabBar(tabs: const [
              Tab(
                icon: Icon(Icons.person),
                text: 'User',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Message',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Setting',
              )
            ]),
          ),
          body: TabBarView(children: const [
            Center(
              child: Text('Ini halaman User'),
            ),
            Center(
              child: Text('Ini halaman Message'),
            ),
            Center(
              child: Text('Ini halaman Setting'),
            ),
          ]),
        ),
      ),
    );
  }
}
