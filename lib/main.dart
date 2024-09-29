import 'package:flutter/material.dart';
import 'package:remdy/auth/sign_up_screen.dart';
import 'package:remdy/screen/dashboard_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      // SearchScreen(),
    );
  }
}
