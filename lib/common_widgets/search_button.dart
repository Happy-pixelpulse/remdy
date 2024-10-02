import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class SearchButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const SearchButton(
      {super.key,
        required this.onPressed,

        required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24,bottom: 16),
          child: Container(
            height: 40,
            width: 345,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.19),
                  // side:  BorderSide(
                  //   color: AppColors.secondary.withOpacity(1),
                  //   width: 0.5,
                  // ),
                ),
                backgroundColor: AppColors.secondary.withOpacity(1),
                elevation: 0,
              ),
              onPressed: onPressed,
              child: Stack(
                children: [
                  Positioned(
                    left: 17,
                    top: 8,
                    child: Icon(
                      Icons.search_outlined,
                      color: AppColors.search_icon.withOpacity(1),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 69,
                    child: Text(
                      buttonName,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.search_icon.withOpacity(1),
                      ),
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
