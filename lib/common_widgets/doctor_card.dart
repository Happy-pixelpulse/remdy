import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/doctor_list.dart';
import '../utils/colors.dart';



class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;
  final String reviews;
  final String rating;

  const DoctorCard({
    super.key,
    required this.imagePath,
    required this.doctorName,
    required this.specialty,
    required this.reviews,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const DoctorList()),
        );
      },
      child: SizedBox(
        height: 198.33,
        width: 170,
        child: Card(
          color: AppColors.secondary,
          // shadowColor: AppColors.primary.withOpacity(0.06),
          semanticContainer: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 22,right: 45, left: 47),
                child:  Container(
                  width: 78,
                  height: 78,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child:CircleAvatar(
                    //radius: 60,
                    backgroundImage: NetworkImage(
                      imagePath,
                    ),
                  ),
                ),
              ),
              Text(
                doctorName,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.drNameText,
                ),
              ),
              Text(
                specialty,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
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
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) =>  const Icon(
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
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),
                    Text(
                      reviews,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
