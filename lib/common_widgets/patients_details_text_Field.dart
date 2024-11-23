import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class PatientsDetailsTextField extends StatefulWidget {
  final bool showBottomArrow;
  final String title;
  final String hintText;

  const PatientsDetailsTextField(
      {super.key,
      this.showBottomArrow = false,
       this.title='',
       this.hintText=''});

  @override
  State<PatientsDetailsTextField> createState() =>
      _PatientsDetailsTextFieldState();
}

class _PatientsDetailsTextFieldState extends State<PatientsDetailsTextField> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.signText1,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.hintText,
              ),
              suffix: widget.showBottomArrow
                  ? const RotatedBox(
                      quarterTurns: 3, child: Icon(Icons.arrow_back_ios))
                  : null,
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.signUpTextButtonRadius,
                    width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15),

                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.signUpTextButtonRadius,
                    width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
