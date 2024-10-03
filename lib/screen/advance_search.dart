import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../utils/colors.dart';

class AdvanceSearch extends StatefulWidget {
  const AdvanceSearch({super.key});

  @override
  State<AdvanceSearch> createState() => _AdvanceSearchState();
}

class _AdvanceSearchState extends State<AdvanceSearch> {
  String? selectedGender;
  String? selectedDoctorType;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
            )),
        toolbarHeight: 70,
        elevation: 0,
        leadingWidth: 24,
        title: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.secondary.withOpacity(1),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Advance Search',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary.withOpacity(1),
                    ),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Image.asset("assets/bell.png")
                ],
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          width: 394,
                          height: 433,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: AppColors.secondary.withOpacity(1),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 17,
                                  left: 150,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Sort By',
                                      style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.bottom_text,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 95           ,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.cancel_outlined,
                                        weight: 19,
                                        color:
                                        AppColors.sign_text1.withOpacity(1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17,right: 17),
                                child: Container(
                                    width: 360,
                                    height: 49,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                        border: Border.all(color: AppColors.bottom_textfield, width: 1),
                                        color: AppColors.secondary
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Number of patient stories-High to low',
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.bottom_text1,
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle_outlined,
                                          weight: 19,
                                          color:
                                          AppColors.sign_text1.withOpacity(1),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17,right: 17),
                                child: Container(
                                    width: 360,
                                    height: 49,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                        border: Border.all(color: AppColors.bottom_textfield, width: 1),
                                        color: AppColors.secondary
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Experience-High to Low',
                                            style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.bottom_text1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 115),
                                          child: Icon(
                                            Icons.circle_outlined,
                                            weight: 19,
                                            color:
                                            AppColors.sign_text1.withOpacity(1),
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17,right: 17),
                                child: Container(
                                    width: 360,
                                    height: 49,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                        border: Border.all(color: AppColors.bottom_textfield, width: 1),
                                        color: AppColors.secondary
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Distance-Near to Far',
                                              style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.bottom_text1,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 122),
                                            child: Icon(
                                              Icons.circle_outlined,
                                              weight: 19,
                                              color:
                                              AppColors.sign_text1.withOpacity(1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(
                                height: 94,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 17, right: 16),
                                child: SizedBox(
                                  width: 361,
                                  height: 52,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                      AppColors.primary.withOpacity(1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Apply',
                                      style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400,
                                        color:
                                        AppColors.secondary.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Image.asset('assets/Home.png')),
            Image.asset('assets/Hospital.png'),
            Image.asset('assets/Favorite.png'),
            Image.asset('assets/Profile.png'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 29, right: 76),
              child: Text(
                'Advanced Search',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColors.sign_text1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text(
                    'Full Name:',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 16),
                  child: Container(
                    width: 360,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text(
                    'City/Town:',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 16),
                  child: Container(
                    width: 360,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Postal Code(eg. M5G):',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 16),
                  child: Container(
                    width: 360,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 275),
                  child: Text(
                    'Gender',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.sign_text1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.sign_text1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Non-Binary',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                        Text(
                          'Non-Binary',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.sign_text1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'All',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text(
                      'All',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.sign_text1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 225),
              child: Text(
                'Type of Doctor:',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.sign_text1,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio<String>(
                      value: 'Family Doctor',
                      groupValue: selectedDoctorType,
                      onChanged: (value) {
                        setState(() {
                          selectedDoctorType = value;
                        });
                      },
                    ),
                    Text(
                      'Family Doctor',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.sign_text1,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Specialist',
                      groupValue: selectedDoctorType,
                      onChanged: (value) {
                        setState(() {
                          selectedDoctorType = value;
                        });
                      },
                    ),
                    Text(
                      'Specialist',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.sign_text1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'All',
                  groupValue: selectedDoctorType,
                  onChanged: (value) {
                    setState(() {
                      selectedDoctorType = value;
                    });
                  },
                ),
                Text(
                  'All',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.sign_text1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    'Residency Hospital',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 16),
                  child: Container(
                    width: 360,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 280),
                      child: Image.asset('assets/chevron-down.png'),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170, bottom: 5),
                  child: Text(
                    'Languages Spoken:',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.sign_text1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 16),
                  child: Container(
                    width: 360,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 280),
                      child: Image.asset('assets/chevron-down.png'),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Container(
                    width: 161,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Submit',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), // Add space between buttons
                  Container(
                    width: 161,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      // Adjust radius as needed
                      border: Border.all(
                          color: AppColors.sign_up_text_button_radius,
                          width: 1), // Set border width
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'CLEAR',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.sign_up_text_button_radius,
                          ),
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
    );
  }
}
