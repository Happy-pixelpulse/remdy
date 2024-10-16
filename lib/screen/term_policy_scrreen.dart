import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class TermPolicyScrreen extends StatefulWidget {
  const TermPolicyScrreen({super.key});

  @override
  State<TermPolicyScrreen> createState() => _TermPolicyScrreenState();
}

class _TermPolicyScrreenState extends State<TermPolicyScrreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
            )),
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.secondary,
          ),
        ),
        title: Text(
          'Term & policy',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
