import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/Vector.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "Let’s Get Started",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(62, 148, 82, 1),
                ),
              ),
          const    SizedBox(height:100),
              Container(
                width: 282,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: const Color.fromRGBO(151, 151, 151, 0.79),
                      width: 0.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 150,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 9.28,
                        left: 16.71,
                        child: Image.asset("assets/google.png",
                            fit: BoxFit.cover)),
                    Positioned(
                      top: 18,
                      left: 80,
                      child: Text(
                        "Continue with Google",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            const  SizedBox(height: 8),
              Container(
                  width: 282,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: const Color.fromRGBO(151, 151, 151, 0.79),
                        width: 0.5),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 150,
                        offset: Offset(0, 10),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 9.28,
                          left: 16.71,
                          child: Image.asset("assets/apple.png",
                              fit: BoxFit.cover)),
                      Positioned(
                        top: 18,
                        left: 80,
                        child: Text(
                          "Continue with Apple",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 0.8),
                          ),
                        ),
                      )
                    ],
                  ) // Your content here,
                  ),
              const SizedBox(height: 8),
              Text(
                "Sign up with Your Account",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),
        ],
      ),
        bottomNavigationBar: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By signning up,I agree to RemdY’s ',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color:const  Color.fromRGBO(0,0,0,1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Terms of Service',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: const Color.fromRGBO(62, 148, 82, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: const Color.fromRGBO(0,0,0,1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: const Color.fromRGBO(62, 148, 82, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
