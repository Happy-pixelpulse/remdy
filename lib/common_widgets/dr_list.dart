import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class Doctor extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;
  final String patients;
  final String rating;

  const Doctor({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
    required this.rating,
    required this.patients,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 161,
      child: Card(
        color: AppColors.secondary.withOpacity(1),
        shadowColor: AppColors.sign_text1.withOpacity(0.06),
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 19.94),
              child: Row(
                children: [
                  Container(
                      width: 59.83,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.secondary.withOpacity(1)),
                      child: Image.network(imagePath)),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.dr_list.withOpacity(1),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        specialty,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.search_box_text.withOpacity(1),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        patients,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.search_box_text.withOpacity(1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // Image.asset("like.png"),
                  Icon(Icons.heart_broken, color: Colors.yellow[500])
                ],
              ),
            ),
            Row(
              children: [
                RatingBar.builder(
                  maxRating: 5,
                  direction: Axis.horizontal,
                  minRating: 1,
                  allowHalfRating: true,
                  itemCount: 1,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: AppColors.primary.withOpacity(1),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                  itemSize: 20,
                  unratedColor: Colors.grey[300],
                  glow: false,
                  glowColor: Colors.amber.withOpacity(0.5),
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
                    color: AppColors.review_text.withOpacity(1),
                  ),
                ),
                SizedBox(width: 200,),
                Positioned(
                  left: 25,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: AppColors.sign_up_text_button_radius
                              .withOpacity(0.79),
                          width: 0.5,
                        ),
                      ),
                      backgroundColor: AppColors.secondary.withOpacity(0.25),
                      shadowColor: AppColors.sign_text1.withOpacity(0.25),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Available",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.review_text.withOpacity(1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
