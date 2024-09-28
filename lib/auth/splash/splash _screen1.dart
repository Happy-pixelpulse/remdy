import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 148, 82, 1),
      body: Align(
        alignment: Alignment.center,
        child: Text(
          'RemdY',
          style: GoogleFonts.poppins(
            fontSize: 80,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(242,242,242,1),
          ),
        ),
      ),
    );
  }
}