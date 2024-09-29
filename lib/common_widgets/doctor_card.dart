import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';


class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;

  const DoctorCard({
    Key? key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:  AppColors.secondary.withOpacity(1),
      shadowColor:  AppColors.sign_text1.withOpacity(0.06),
      semanticContainer: true,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22.47,right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30, // Adjust radius as needed
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          Text(
            doctorName,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.dr_name_text.withOpacity(1),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            specialty,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
