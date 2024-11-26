import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screen/hospitaldetails.dart';
import '../utils/colors.dart';

class HospitalList extends StatelessWidget {
  final String hospitalImage;
  final String hospitalName;
  final String address;
  final String rating;
  final String reviews;
  final String chart;
  final String waitingTime;
  final String distanceText;
  final String hospitalText;
  final bool isLiked;

  const HospitalList({
    super.key,
    required this.hospitalName,
    required this.address,
    required this.rating,
    required this.isLiked,
    required this.reviews,
    required this.hospitalImage,
    required this.chart,
    required this.waitingTime,
    required this.hospitalText,
    required this.distanceText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HospitalDetails()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 17,right: 17,bottom: 12),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  hospitalImage,
                  height: 121,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hospitalName,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.hospitalText,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 25,
                    // ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppColors.signText1,
                      ),
                      iconSize: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/map-pin.png',
                      color: AppColors.hospitalLocationText,
                      height: 18,
                      width: 18,
                    ),
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
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          rating,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
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
                          glow: false,
                          glowColor: AppColors.searchScreenRating,
                          ignoreGestures: false,
                        ),
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
                    Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: Column(
                        children: [
                          Container(
                            height: 22,
                            width: MediaQuery.of(context).size.width/6.5,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(7)),
                              border: Border.all(
                                width: 0.5,
                                color: AppColors.container,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    chart,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.container,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('assets/trendingup.png')
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            waitingTime,
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              fontSize: 7,
                              fontWeight: FontWeight.w500,
                              color: AppColors.container,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: AppColors.signText1,
                  thickness: 0.1,
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9,right: 17,top: 12,bottom: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [
                        Image.asset(
                          // distanceImage,
                          'assets/routing.png',
                          height: 22,
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
                      ],
                    ),
                    Row(
                      children: [
                      Image.asset('assets/hospital_1.png'),
                        const SizedBox(width: 4),
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
