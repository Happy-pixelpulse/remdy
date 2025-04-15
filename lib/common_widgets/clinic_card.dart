import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/AppSpacing.dart';
import '../utils/colors.dart';

class ClinicCard extends StatelessWidget {
  final String clinicImage;
  final String clinicName;

  // final String address;
  // final String rating;
  // final String reviews;
  // final String distanceText;
  // final String hospitalText;
  // final bool isLiked;

  const ClinicCard({
    super.key,
    required this.clinicImage,
    required this.clinicName,
    // required this.hospitalName,
    // required this.address,
    // required this.rating,
    // required this.isLiked,
    // required this.reviews,
    // required this.hospitalImage,
    // required this.hospitalText,
    // required this.distanceText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 209,
      width: 232,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppSpacing.appSpacing_8),
                topRight: Radius.circular(AppSpacing.appSpacing_8),
              ),
              child: Image.network(
                clinicImage,
                height: 168,
                width: 232,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSpacing.appSpacing_12, top: AppSpacing.appSpacing_8),
              child: Text(
                clinicName,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.hospitalText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
