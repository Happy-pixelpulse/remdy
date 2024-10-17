import 'package:flutter/material.dart';
import 'package:remdy/screen/faq_screen.dart';
import 'package:remdy/splash/splash%20_screen1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // FaqScreen(),
       SplashScreen(),

    );
  }
}
