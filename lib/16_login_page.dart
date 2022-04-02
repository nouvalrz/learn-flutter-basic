import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_first/17_main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const MainPage();
          }));
        },
      )),
    );
  }
}
