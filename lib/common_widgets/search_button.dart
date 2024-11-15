import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

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
        width: 345,
        height: 40,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.secondary),
        child: TextField(
          showCursor: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: AppColors.searchIcon,
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
