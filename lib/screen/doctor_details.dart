import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  final List<String> items = [
    'Summary',
    'Location',
    'Patient Review',
    'Insurance'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.signText1,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.add),
            color: AppColors.signText1,
          ),
        ],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 13),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image.network(
                        'https://pixelwallpaper.pixelpulseinc.com/assets/vactor/vactor_1.jfif',
                        width: 117,
                        height: 142,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Bellamy Nicholas',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.drNameText,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Internal Medicine, Cardiologist',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.reviewText,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Fort Washington Ave , New',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.reviewText,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'York , NY 10032',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.reviewText,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            maxRating: 5,
                            direction: Axis.horizontal,
                            minRating: 1,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: AppColors.drRating,
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
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            '4.1',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.signText1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(21)),
                        color: AppColors.secondary),
                    child: Column(
                      children: [
                        Container(
                            width: 49,
                            height: 63,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: AppColors.drPatients.withOpacity(0.15)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset('assets/personIcon.png'),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1000+',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.drNameText,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Patients',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.reviewText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 130,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(21)),
                        color: AppColors.secondary),
                    child: Column(
                      children: [
                        Container(
                            width: 49,
                            height: 63,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: AppColors.drExperience),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset('assets/expIcon.png'),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '10 Yrs',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.drNameText,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Experience',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.reviewText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 130,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(21)),
                        color: AppColors.secondary),
                    child: Column(
                      children: [
                        Container(
                            width: 49,
                            height: 63,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: AppColors.drRatings),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Icon(
                                Icons.star_border_purple500_sharp,
                                color: AppColors.drRatingsIcon,
                                weight: 23,
                                size: 35,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '4.5 ',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.drNameText,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Ratings',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.reviewText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...[
                        for (int i = 0; i < 4; i++)
                          Row(
                            children: [
                              Container(
                                width: 98,
                                height: 43,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    color: AppColors.secondary),
                                child: Center(
                                  child: Text(
                                    '',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          AppColors.signText1.withOpacity(0.70),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          )
                      ]
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Quick Facts',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.drNameText,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/checkcircle.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Accepting New Patients',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/addresscard.png'),
                        SizedBox(
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
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/language.png'),
                        SizedBox(
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
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/Hearts.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '39 Years Of Experience',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.drNameText,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/circles.png'),
                        SizedBox(
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
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/locationarrow.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '5 Locations',
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
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  'About Doctor',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.drNameText,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  'Dr. Bellamy Nicholasis an interventional cardiologist and the Director of the Cardiorenal Program at Columbia University Irving Medical Center/NewYork-Presbyterian Hospital. She earned her medical degree from the University of Southern California and a Master\s in Clinical Research and Translational Science from Mayo Clinic Rochester.',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.reviewText,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  'Specialties',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.drNameText,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 125),
                child: Text(
                  'SPECIALTY : Diagnostic Radiology \nISSUED ON : Effective:30 Jun 2021\nTYPE : RCPSC Specialist',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.reviewText,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Text(
                  'Postgraduate Training',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.drNameText,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  'University of Toronto, 01 Jul 2016 to 22 Sep 2016\nAVP - Diagnostic Radiology\nUniversity of Toronto, 01 Jul 2016 to 22 Sep 2016\nAVP - Diagnostic Radiology',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.reviewText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
