import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/auth/sign_up_screen.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              context.getLocalization()?.splashScreenTitle ?? '',
              style: GoogleFonts.poppins(
                fontSize: 80,
                fontWeight: FontWeight.w700,
                color: AppColors.tp,
              ),
            ),
            Text(
              context.getLocalization()?.splashScreenTitle2 ?? '',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.tp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
