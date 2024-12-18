import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/patients_details.dart';
import '../bloc/doctor_details_bloc/doctor_details_bloc.dart';
import '../bloc/doctor_details_bloc/doctor_details_event.dart';
import '../utils/colors.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  late DoctorDetailsBloc _doctorDetailsBloc;
  @override
  void initState() {
    super.initState();
    _doctorDetailsBloc = BlocProvider.of<DoctorDetailsBloc>(context);
    _doctorDetailsBloc.add(DoctorsDetails());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: () {},
          backgroundColor: Colors.green,
          tooltip: 'Phone',
          child: const Icon(
            Icons.phone,
            color: AppColors.secondary,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text("Profile updated")),
            // );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(0, 57),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: AppColors.container,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.getLocalization()?.doctorDetailsJoinWaitingListButton ??
                    '',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.av_timer_rounded,
                color: AppColors.secondary,
                size: 20,
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.signText1,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: AppColors.signText1,
          ),
        ],
        //toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top: 13),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/027/186/029/large_2x/smiling-male-doctor-with-good-test-results-wearing-a-white-coat-and-stethoscope-looking-into-camera-on-isolated-white-background-copy-space-for-health-free-photo.jpg',
                        width: 115,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28,),
                    child: Column(
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
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Internal Medicine, Cardiologist',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.reviewText,
                          ),
                        ),
                        const SizedBox(
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
                        const SizedBox(
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
                        const SizedBox(
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
                  ),
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      width: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
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
                                  color:
                                      AppColors.drPatients.withOpacity(0.15)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset('assets/personIcon.png'),
                              )),
                          const SizedBox(
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
                          const SizedBox(
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
                  ),
                  Expanded(
                    child: Container(
                      height: 130,
                      width: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          color: AppColors.secondary),
                      child: Column(
                        children: [
                          Container(
                              width: 49,
                              height: 63,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: AppColors.drExperience),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset('assets/expIcon.png'),
                              )),
                          const SizedBox(
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
                          const SizedBox(
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
                  ),
                  Expanded(
                    child: Container(
                      height: 130,
                      width: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          color: AppColors.secondary),
                      child: Column(
                        children: [
                          Container(
                              width: 49,
                              height: 63,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: AppColors.drRatings),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Icon(
                                  Icons.star_border_purple500_sharp,
                                  color: AppColors.drRatingsIcon,
                                  weight: 23,
                                  size: 35,
                                ),
                              )),
                          const SizedBox(
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
                          const SizedBox(
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
                  ),
                ],
              ),
              const SizedBox(height: 11),
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
                      child: Text(
                        'Summary',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(98, 43),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Location',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(132, 43),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Patient Review',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)),
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
                      child: Text(
                        'Insurance',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.signText1.withOpacity(0.70)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'Quick Facts',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.drNameText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/checkcircle.png'),
                      const SizedBox(
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
                  const SizedBox(
                    height: 12,
                  ),
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
                      Image.asset('assets/Hearts.png'),
                      const SizedBox(
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
                  Row(
                    children: [
                      Image.asset('assets/locationarrow.png'),
                      const SizedBox(
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
              const SizedBox(
                height: 13,
              ),
              Text(
                'About Doctor',
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
                'Dr. Bellamy Nicholasis an interventional cardiologist and the Director of the Cardiorenal Program at Columbia University Irving Medical Center/NewYork-Presbyterian Hospital. She earned her medical degree from the University of Southern California and a Master\s in Clinical Research and Translational Science from Mayo Clinic Rochester.',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Specialties',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.drNameText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'SPECIALTY : Diagnostic Radiology \nISSUED ON : Effective:30 Jun 2021\nTYPE : RCPSC Specialist',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Postgraduate Training',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.drNameText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'University of Toronto, 01 Jul 2016 to 22 Sep 2016\nAVP - Diagnostic Radiology\nUniversity of Toronto, 01 Jul 2016 to 22 Sep 2016\nAVP - Diagnostic Radiology',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Registration History',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.drNameText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'First certificate of registration issued: Pre Entry Assessment Program Certificate ISSUE DATE : Effective: 01 Jul 2016 Transfer of class of registration to: Postgraduate Education Certificate ISSUE DATE : Effective: 23 Sep 2016',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Hospital Privileges  ',
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
                'Royal Victoria Regional Health Centre Barrie',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Working time',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.drNameText,
                    ),
                  ),

                  Text(
                    'Mon - Sat (08:30AM - 09:00PM)',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.reviewText,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Accepting New Patients',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.reviewText,
                ),
              ),
              const SizedBox(
                height: 13,
              ),
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
              const SizedBox(
                height: 13,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 372,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                    color: AppColors.secondary),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Bellamy Nicholas’s Patient Review ',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppColors.drNameText,
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
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.reviewText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DrDetails()),
                          );
                        },
                        child: Text(
                          context
                                  .getLocalization()
                                  ?.doctorDetailsReviewButton ??
                              '',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.signText1,
                          ),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: AppColors.secondary),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 11,
                          ),
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
                          const SizedBox(
                            width: 11,
                          ),
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
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Comments',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.reviewText,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
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
                      height: 6,
                    ),
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
                    const SizedBox(
                      height: 22,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Show More',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 5),
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       minimumSize: const Size(0,57),
              //       backgroundColor: AppColors.primary,
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           context.getLocalization()?.doctorDetailsSendRequestButton??'',
              //           style: GoogleFonts.poppins(
              //             fontSize: 16,
              //             fontWeight: FontWeight.w400,
              //             color: AppColors.secondary,
              //           ),
              //         ),
              //         const SizedBox(width: 10,),
              //         const Icon(Icons.ios_share,color: AppColors.secondary,size: 20,),
              //       ],
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
