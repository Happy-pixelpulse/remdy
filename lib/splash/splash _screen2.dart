import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(62, 148, 82, 1),
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height / 2 - 60,
                right: MediaQuery.of(context).size.width / 2 - 120,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(242, 242, 242, 1)
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'RemdY',
                  style: GoogleFonts.poppins(
                    fontSize: 80,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(242, 242, 242, 1),
                  ),
                ),
              ),

            ],
          ),
        ),
      );
  }
}