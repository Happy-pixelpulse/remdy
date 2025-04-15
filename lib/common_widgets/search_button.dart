import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/utils/AppSpacing.dart';

import '../utils/colors.dart';

class SearchButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const SearchButton(
      {super.key, required this.onPressed, required this.buttonName});

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSpacing.appSpacing_44,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        // color: Colors.red,
        color: AppColors.secondary,
      ),
      child:TextField(
        showCursor: false,
        cursorHeight: AppSpacing.appSpacing_12,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: AppSpacing.appSpacing_10),
          border: InputBorder.none,
          prefixIcon:  Padding(
            padding: const EdgeInsets.only(left: AppSpacing.appSpacing_18,right: AppSpacing.appSpacing_14),
            child: Image.asset('assets/search_icon.png')
          ),
          hintText: context.getLocalization()?.doctorListSearchButton ?? '',
          hintStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.searchIcon,
          ),
        ),
      ),
    );
  }
}
