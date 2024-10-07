import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/common_app_bar.dart';


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
      appBar: const CommonAppBar(),
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
                  color: AppColors.signText1,
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
                      color: AppColors.signText1,
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
                          color: AppColors.signUpTextButtonRadius,
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
                      color: AppColors.signText1,
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
                          color: AppColors.signUpTextButtonRadius,
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
                      color: AppColors.signText1,
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
                          color: AppColors.signUpTextButtonRadius,
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
                      color: AppColors.signText1,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          activeColor: AppColors.primary,
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
                            color: AppColors.signText1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          activeColor: AppColors.primary,
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
                            color: AppColors.signText1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          activeColor: AppColors.primary,
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
                            color: AppColors.signText1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      activeColor: AppColors.primary,
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
                        color: AppColors.signText1,
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
                  color: AppColors.signText1,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio<String>(
                      activeColor: AppColors.primary,
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
                        color: AppColors.signText1,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      activeColor: AppColors.primary,
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
                        color: AppColors.signText1,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      activeColor: AppColors.primary,
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
                        color: AppColors.signText1,
                      ),
                    ),
                  ],
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
                      color: AppColors.signText1,
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
                          color: AppColors.signUpTextButtonRadius,
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
                      color: AppColors.signText1,
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
                          color: AppColors.signUpTextButtonRadius,
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
                          color: AppColors.signUpTextButtonRadius,
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
                          color: AppColors.signUpTextButtonRadius,
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
                            color: AppColors.signUpTextButtonRadius,
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
