import 'package:easy_radio/easy_radio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../utils/colors.dart';
class SquareRadioWidget<T> extends StatelessWidget {
  const SquareRadioWidget(
      {super.key, required this.selectedItem, required this.value,required this.onChanged,required this.labelText});

  final T selectedItem;
  final T value;
  final String labelText;

  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: ()=>onChanged!(value),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            EasyRadio<T>(
              shape: const RadioShape.square(8),
              activeBorderColor: AppColors.primary,
              dotColor: AppColors.primary,
              inactiveBorderColor: AppColors.signUpTextButtonRadius,
              value: value,
              groupValue: selectedItem,
              onChanged: onChanged,
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              labelText,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.signText1,
              ),
            ),
            const SizedBox(width: 22,),
          ],
        ),
      ),
    );
  }
}
