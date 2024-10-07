import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
             Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.signText1,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.add),
            color: AppColors.signText1,
          ),
        ],
        toolbarHeight: 70,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 13),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.network(
                    'https://pixelwallpaper.pixelpulseinc.com/assets/vactor/vactor_1.jfif',
                    width: 117,
                    height: 142,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Bellamy Nicholas',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.drNameText,
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text(
                      'Internal Medicine, Cardiologist',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),
                    Text(
                      'Fort Washington Ave , New',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),Text(
                      'York , NY 10032',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
