import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/screen/doctor_details.dart';

import '../screen/doctor_list.dart';
import '../utils/colors.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;
  final String reviews;
  final String rating;
  final bool isActive;

  const DoctorCard({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
    required this.reviews,
    required this.rating,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DoctorDetails()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                    imagePath,
                  ),
                ),
                if (isActive)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: AppColors.active,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.tp, width: 2)),

                    ),
                  ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  doctorName,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.drNameText,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                specialty,
                maxLines: 1,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    direction: Axis.horizontal,
                    minRating: 1,
                    allowHalfRating: true,
                    itemCount: 1,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      if (kDebugMode) {
                        print(rating);
                      }
                    },
                    itemSize: 17,
                    unratedColor: Colors.grey[300],
                    glow: false,
                    glowColor: AppColors.searchScreenRating,
                    ignoreGestures: false,
                  ),
                  Text(
                    rating,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.reviewText,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    reviews,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.reviewText,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
