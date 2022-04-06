// ignore_for_file: unnecessary_const, prefer_const_constructors, must_be_immutable
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  bool isPasswordVisible = false;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double getSmallCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 4.3 / 5;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.orange),
      child: Scaffold(
        backgroundColor: Color(0xFFEDEAEF),
        resizeToAvoidBottomInset: false,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -getSmallCircle(context) / 3,
              top: -getSmallCircle(context) / 3,
              child: Container(
                width: getSmallCircle(context),
                height: getSmallCircle(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: const [Colors.red, Colors.orange],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
              ),
            ),
            Positioned(
              left: -getSmallCircle(context) / 5,
              top: -getSmallCircle(context) / 5,
              child: Container(
                width: getBigCircle(context),
                height: getBigCircle(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: const [Colors.red, Colors.orange],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft),
                ),
              ),
            ),
            Positioned(
              left: -MediaQuery.of(context).size.width / 3.5,
              top: MediaQuery.of(context).size.width / 6,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/nouvalrz.svg'),
                    Container(
                      margin: EdgeInsets.only(left: 48, top: 10),
                      child: Text(
                        'My first login page ever.',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: -getSmallCircle(context) / 3,
              bottom: -getSmallCircle(context) / 2,
              child: Opacity(
                opacity: 0.07,
                child: Container(
                  width: getBigCircle(context) * 1.1,
                  height: getBigCircle(context) * 1.1,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: const [Colors.red, Colors.orange],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.2,
                    right: 30,
                    left: 30),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 42, 0, 20),
                      child: CustomTextInput(
                        hintText: 'Username',
                        obscureText: false,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: CustomTextInput(
                        hintText: 'Password',
                        obscureText: true,
                      ),
                    ),
                    CustomButton(),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                              fontFamily: 'Inter', color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 28),
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border:
                                  Border.all(color: Colors.white, width: 1.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: SizedBox(
                              height: 34,
                              width: 34,
                              child: Image.asset('assets/facebook.png'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border:
                                  Border.all(color: Colors.white, width: 1.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: SizedBox(
                              height: 34,
                              width: 34,
                              child: Image.asset('assets/twitter.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 150, 159, 162).withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 10,
          offset: Offset(0, 3),
        )
      ]),
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(
              fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 14),
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 18),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.orange),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextInput extends StatefulWidget {
  CustomTextInput({
    Key? key,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  String? hintText;
  bool? obscureText;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 183, 202, 212).withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 20,
          offset: Offset(0, 2),
        ),
      ], borderRadius: BorderRadius.all(Radius.circular(12))),
      child: TextField(
        obscureText: (widget.obscureText ?? false) ? !_isVisible : false,
        style: TextStyle(color: Colors.grey[700]),
        decoration: InputDecoration(
          iconColor: Colors.orange,
          prefixIcon: (widget.obscureText ?? false)
              ? Icon(
                  Icons.lock,
                  color: Colors.orange,
                )
              : Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
          suffixIcon: GestureDetector(
              onTap: _togglePasswordVisibility,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                child: (widget.obscureText ?? false)
                    ? (_isVisible)
                        ? Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: Icon(
                              Icons.visibility_off,
                              color: Colors.grey[700],
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: Icon(
                              Icons.visibility,
                              color: Colors.grey[700],
                            ),
                          )
                    : Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.transparent,
                      ),
              )),
          hintText: widget.hintText,
          hintStyle: TextStyle(fontFamily: 'Inter', color: Colors.grey),
          contentPadding:
              EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
          fillColor: Color.fromARGB(160, 255, 255, 255),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.3),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.3),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
}
