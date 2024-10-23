import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/screen/dashboard_screen.dart';
import 'package:remdy/screen/home_screen.dart';
import '../common_widgets/sign_up_button.dart';
import '../utils/colors.dart';

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
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 100),
              SignUpButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomeScreen()),
                    );
                  },
                  imageName: 'assets/google.png',
                  buttonName: 'Continue with Google'),
              const SizedBox(height: 8),
              SignUpButton(
                  onPressed: () {},
                  imageName: 'assets/apple.png',
                  buttonName: 'Continue with Apple'),
              const SizedBox(height: 8),
              Text(
                "Sign up with Your Account",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.signText1,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(6),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By signning up,I agree to RemdY’s ',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.signText1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Terms of Service',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.signText1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
