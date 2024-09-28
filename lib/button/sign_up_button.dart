import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageName, buttonName;

  const SignUpButton(
      {super.key,
      required this.onPressed,
      required this.imageName,
      required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side:  BorderSide(
                color: AppColors.sign_up_text_button_radius.withOpacity(0.79),
                width: 0.5,
              ),
            ),
            backgroundColor: AppColors.secondary.withOpacity(0.25),
            shadowColor:AppColors.sign_text1.withOpacity(0.25),
            elevation: 0,
          ),
          onPressed: onPressed,
          child: SizedBox(
            width: 282,
            height: 58,
            child: Stack(
              children: [
                Positioned(
                  top: 9.28,
                  left: 16.71,
                  child: Image.asset(
                    imageName,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 18,
                  left: 80,
                  child: Text(
                    buttonName,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
