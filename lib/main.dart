import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:remdy/sign_up_screen.dart';
import 'package:remdy/splash%20_screen1.dart';
import 'package:remdy/splash%20_screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SignUpScreen(),
    );
  }
}
