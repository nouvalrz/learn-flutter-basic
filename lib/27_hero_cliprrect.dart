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
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        title: Text('Latihan Hero dan ClipRRect'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
        child: Hero(
          tag: #profilepicture,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://dbkpop.com/wp-content/uploads/2022/03/ive_gaeul_profile.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('Latihan Hero dan , ClipRRect'),
      ),
      body: Center(
        child: Hero(
          tag: #profilepicture,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://dbkpop.com/wp-content/uploads/2022/03/ive_gaeul_profile.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
