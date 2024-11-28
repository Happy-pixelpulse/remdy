import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 46),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side:  BorderSide(
                  color: AppColors.signUpTextButtonRadius.withOpacity(0.79),
                  width: 0.5,
                ),
              ),
              backgroundColor: AppColors.backgroundColor,
              shadowColor:AppColors.signUpTextButtonRadius.withOpacity(0.79),
              elevation: 4,

            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageName,
                    fit: BoxFit.cover,
                  ),
                 const SizedBox(width: 18,),
                  Text(
                    buttonName,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
