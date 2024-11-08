import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/auth/sign_up_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:remdy/extensions/localization_extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 148, 82, 1),
      body: Align(
        alignment: Alignment.center,
        child: Text(
          context.getLocalization()?.splashScreenTitle ?? '',
          style: GoogleFonts.poppins(
            fontSize: 80,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(242, 242, 242, 1),
          ),
        ),
      ),
    );
  }
}
