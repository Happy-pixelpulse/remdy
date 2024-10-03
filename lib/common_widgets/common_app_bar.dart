import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: AppBar(
       flexibleSpace: FlexibleSpaceBar(
           background: Image.asset(
             'assets/rectangle_appbar_bg.png',
             fit: BoxFit.fill,
           )),
       toolbarHeight: 70,
       elevation: 0,
       leadingWidth: 24,
       title: SingleChildScrollView(
         child: Column(
           children: [
             Row(
               children: [
                 IconButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   icon: const Icon(Icons.arrow_back),
                   color: AppColors.secondary.withOpacity(1),
                 ),
                 const SizedBox(
                   width: 60,
                 ),
                 Text(
                   'Advance Search',
                   style: GoogleFonts.poppins(
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                     color: AppColors.secondary.withOpacity(1),
                   ),
                 ),
                 const SizedBox(
                   width: 55,
                 ),
                 Image.asset("assets/bell.png")
               ],
             ),
           ],
         ),
       ),
       automaticallyImplyLeading: false,
     ),
    );
  }
}
