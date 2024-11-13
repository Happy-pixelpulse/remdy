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
    return  GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Hospital()),
        );
      },
      child: SizedBox(
        height: 500,
        width: 232,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.network(
                   hospitalImage,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 167),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.tp,
                    ),
                    iconSize: 35,
                  ),
                ),
              ]),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
               hospitalName,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.hospitalText,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      // Image.asset('assets/map-pin.png'),
                      const Icon(Icons.location_on,
                          size: 16),
                      const SizedBox(width: 4),
                      Text(
                        address,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors
                              .hospitalLocationText,
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
                          fontWeight: FontWeight.w400,
                          color: AppColors
                              .hospitalLocationText,
                        ),
                      ),
                      const SizedBox(width: 5),
                      RatingBar.builder(
                        direction: Axis.horizontal,
                        //minRating: 1,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                        const EdgeInsets.symmetric(
                            horizontal: 1.0),
                        itemBuilder: (context, _) =>
                        const Icon(
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
                        glowColor:
                        AppColors.searchScreenRating,
                        ignoreGestures: false,
                      ),
                      const SizedBox(width: 4),
                      Text(
                       reviews,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors
                              .hospitalLocationText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: AppColors.notificationText,
                    thickness: 1,
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/routing.png',
                        height: 22,
                        width: 22,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        distanceText,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors
                              .hospitalLocationText,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/Hospital.png',
                        height: 22,
                        width: 22,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        hospitalText,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors
                              .hospitalLocationText,
                        ),
                      ),
                    ],
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
