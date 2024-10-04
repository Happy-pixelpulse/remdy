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
  final bool isLiked;
  final bool isAvailable;

  const Doctor({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
    required this.rating,
    required this.patients,
    required this.isLiked,
    required this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 161,
      child: Card(
        color: AppColors.secondary,
        shadowColor: AppColors.sign_text1.withOpacity(0.06),
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          imagePath,
                          fit: BoxFit.fill,
                          width: 60,
                          height: 60,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          doctorName,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.dr_list,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          specialty,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.search_box_text,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          patients,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.search_box_text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 31,
                    ),
                    if (isLiked)
                      Padding(
                        padding: const EdgeInsets.only(right: 15,bottom: 35),
                        child: Image.asset("assets/like_outline.png"),
                      )
                    else
                      Padding(
                        padding: const EdgeInsets.only(right: 15,bottom: 35),
                        child: Image.asset("assets/like_outline.png"),
                      ),
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
                    itemPadding: const EdgeInsets.symmetric(horizontal:20),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: AppColors.primary,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                    itemSize: 17,
                    unratedColor: Colors.grey[300],
                    glow: true,
                    glowColor: Colors.amber.withOpacity(0.5),
                    ignoreGestures: false,
                  ),
                  Text(
                    rating,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.review_text,
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 34,
                      width: 103,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: AppColors.sign_up_text_button_radius
                                  .withOpacity(0.79),
                              width: 1,
                            ),
                          ),
                          backgroundColor: AppColors.secondary.withOpacity(0.25),
                          shadowColor: AppColors.sign_text1.withOpacity(0.25),
                          elevation: 0,
                        ),
                        onPressed:null,
                        child: Text(
                         isAvailable? "Available":"Full",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: isAvailable?AppColors.primary:Colors.red,
                          ),
                        ),
                      ),
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
