import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/doctor_details.dart';
import '../utils/colors.dart';

class DoctorListItem extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialty;
  final String patients;
  final String rating;
  final bool isLiked;
  final bool isAvailable;

  const DoctorListItem({
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DoctorDetails()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.tp,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Card(
            color: AppColors.secondary,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 12, top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            imagePath,
                            fit: BoxFit.cover,
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
                              color: AppColors.drList,
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
                              color: AppColors.searchBoxText,
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
                              color: AppColors.searchBoxText,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      if (isLiked)
                        Padding(
                          padding: const EdgeInsets.only(right: 15, bottom: 35),
                          child: Image.asset("assets/like_outline.png"),
                        )
                      else
                        Padding(
                          padding: const EdgeInsets.only(right: 15, bottom: 35),
                          child: Image.asset("assets/like_outline.png"),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // RatingBar.builder(
                            //   maxRating: 5,
                            //   direction: Axis.horizontal,
                            //   minRating: 1,
                            //   allowHalfRating: true,
                            //   itemCount: 1,
                            //   itemPadding: const EdgeInsets.symmetric(horizontal:20),
                            //   itemBuilder: (context, _) => const Icon(
                            //     Icons.star,
                            //     color: AppColors.primary,
                            //   ),
                            //   onRatingUpdate: (rating) {
                            //     if (kDebugMode) {
                            //       print(rating);
                            //     }
                            //   },
                            //   itemSize: 17,
                            //   unratedColor: Colors.grey[300],
                            //   glow: true,
                            //   glowColor: Colors.amber.withOpacity(0.5),
                            //   ignoreGestures: false,
                            // ),
                            const Icon(
                              Icons.star,
                              color: AppColors.primary,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              rating,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.reviewText,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                color: isAvailable
                                    ? AppColors.primary
                                    : AppColors.waring1,
                                width: 1,
                              ),
                            ),
                            backgroundColor:
                                AppColors.secondary.withOpacity(0.25),
                            shadowColor: AppColors.signText1.withOpacity(0.25),
                            elevation: 0,
                          ),
                          onPressed: null,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: isAvailable ? 22 : 40, vertical: 8),
                            child: Text(
                              isAvailable ? "Available" : "Full",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: isAvailable
                                    ? AppColors.primary
                                    : AppColors.waring1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
