import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;
  final String reviews;
  final String rating;

  const DoctorCard({
    Key? key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
    required this.reviews,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198.33,
      width: 170,
      child: Card(
        color: AppColors.secondary,
        shadowColor: AppColors.sign_text1.withOpacity(0.06),
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 22.47, right: 44.94, left: 46.9),
              child: Container(
                width: 78.16,
                height: 78.16,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(imagePath),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              doctorName,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.dr_name_text,
              ),
            ),
            const SizedBox(height: 1.46),
            Text(
              specialty,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.review_text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  RatingBar.builder(
                    direction: Axis.horizontal,
                    minRating: 1,
                    allowHalfRating: true,
                    itemCount: 1,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                    itemSize: 17,
                    unratedColor: Colors.grey[300],
                    glow: false,
                    glowColor: AppColors.search_screen_rating,
                    ignoreGestures: false,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    rating,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.review_text,
                    ),
                  ),
                  Text(
                    reviews,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.review_text,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
