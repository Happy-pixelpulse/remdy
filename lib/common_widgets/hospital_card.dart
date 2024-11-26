import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/hospital.dart';
import '../utils/colors.dart';

class HospitalCard extends StatelessWidget {
  final String hospitalImage;
  final String hospitalName;
  final String address;
  final String rating;
  final String reviews;
  final String distanceText;
  final String hospitalText;
  final bool isLiked;

  const HospitalCard({
    super.key,
    required this.hospitalName,
    required this.address,
    required this.rating,
    required this.isLiked,
    required this.reviews,
    required this.hospitalImage,
    required this.hospitalText,
    required this.distanceText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Hospital()),
        );
      },
      child: SizedBox(
        // height: 500,
        width: MediaQuery.of(context).size.width / 1.55,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(fit: StackFit.passthrough, children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.network(
                    hospitalImage,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,right: 8),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/hospital_like_normal.png',
                        height: 25,
                        width: 27,
                      )),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospitalName,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.headLine,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        // Image.asset('assets/map-pin.png'),
                       Image.asset('assets/map-pin.png',color: AppColors.hospitalLocationText,height: 18,width: 18,),
                        const SizedBox(width: 4),
                        Text(
                          address,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.hospitalLocationText,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          rating,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.hospitalLocationText,
                          ),
                        ),
                        RatingBar.builder(
                          direction: Axis.horizontal,
                          //minRating: 1,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.zero,
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
                          glow: true,
                          glowColor: AppColors.searchScreenRating,
                          ignoreGestures: false,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          reviews,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.hospitalLocationText,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Divider(
                        color: AppColors.dividerBorder,
                        thickness: 1,
                        height: 10,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/routing.png',
                      height: 22,
                      width: 22,
                      fit: BoxFit.fill,
                    ),

                    Text(
                      distanceText,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.hospitalLocationText,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/hospital_1.png',
                      height: 16,
                      width: 16,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      hospitalText,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.hospitalLocationText,
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
