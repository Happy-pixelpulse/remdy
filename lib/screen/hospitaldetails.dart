import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class HospitalDetails extends StatefulWidget {
  const HospitalDetails({super.key});

  @override
  State<HospitalDetails> createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.phone,color: AppColors.secondary,),
          tooltip: 'Phone',
        ),
                ),
      ],
    ),

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
            },
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 9,),
              Container(
                height: 213,
                width: 371,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_1.jfif',
                    width: double.infinity,
                    //height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Sunrise Health Clinic',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.hospitalText
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Explore care at Hospital Center at Orange in Orange, NJ, and compare its services, physicians, and hospital ratings on Healthgrades. Find the best healthcare options for your needs, all in one place.',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.reviewText,
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(98, 43),
                      ),
                      onPressed: () {},
                      child:  Text(
                        'Overview ',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(143 , 43),
                      ),
                      onPressed: () {},
                      child:  Text(
                        'Hospital Quality',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(87, 43),
                      ),
                      onPressed: () {},
                      child:  Text(
                        'Reviews',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(87, 43),
                      ),
                      onPressed: () {},
                      child:  Text(
                        'Location',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                'Quick Facts',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.drNameText
                ),
              ),
              const SizedBox(height: 11,),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/addresscard.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '23 Insurances Accepted',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.drNameText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/language.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Speaks Spanish, Russian',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.drNameText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/circles.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '4 Board Certifications',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.drNameText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              SizedBox(
                width: 357,
                height: 248,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.drNameText
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Image.asset('assets/map-pin.png',color: AppColors.signText1,),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '23 Insurances Accepted',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.drNameText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                'Insurance Plans Accepted',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.drNameText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'AETNA\nAffinity Health Plan\nAgeWell\nAmida Care\nCIGNA\nEmblem/GHI\nEmblem/Hip\nEmpire Blue Cross Blue Shield Healthplus',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                'Hospital Quality',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.drNameText
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                'Clinical Ratings',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.reviewText
                ),
              ),
              Text(
                'Research hospital performance and talk to your\ndoctor about what\s right for you',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                width: 361,
                height: 372,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                    color: AppColors.secondary),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7,),
                    Text(
                      'Sunrise Health Clinic',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.hospitalText,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          '4.1',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: AppColors.drNameText,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RatingBar.builder(
                              maxRating: 5,
                              direction: Axis.horizontal,
                              minRating: 1,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: AppColors.drRating,
                              ),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) {
                                  print(rating);
                                }
                              },
                              itemSize: 17,
                              unratedColor: Colors.grey[300],
                              glow: true,
                              glowColor: Colors.amber.withOpacity(0.5),
                              ignoreGestures: false,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '45 Ratings with 11 comments',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: AppColors.reviewText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(345, 40),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Write Review ',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: AppColors.signText1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 181,
                      height: 34,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.signText1.withOpacity(0.13),
                              width: 2),
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          color: AppColors.secondary),
                      child: Row(
                        children: [
                          const SizedBox(width: 11,),
                          Center(
                            child: Text(
                              'Sort Most recent',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          const SizedBox(width: 11,),
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Image.asset(
                                'assets/chevron-down.png',
                                height: 24,
                                width: 24,
                                fit: BoxFit.cover,
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Text(
                        'Comments',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.reviewText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6,),
                    RatingBar.builder(
                      maxRating: 5,
                      direction: Axis.horizontal,
                      minRating: 1,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.drRating,
                      ),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) {
                          print(rating);
                        }
                      },
                      itemSize: 17,
                      unratedColor: Colors.grey[300],
                      glow: true,
                      glowColor: Colors.amber.withOpacity(0.5),
                      ignoreGestures: false,
                    ),
                    const SizedBox(height: 6,),
                    Text(
                      'April 21st , 2024',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),
                    Text(
                      'I had a cryptogenic stroke in the setting of a PFO Dr.\nSommer did a PFO closure for me quick and painless, his NP\nBarbara is also extremely astute and caring.',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.reviewText,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Center(
                        child: Text(
                          'Show More',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.signUpTextButtonRadius,
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
    );
  }
}
