import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/common_app_bar.dart';
import 'package:remdy/extensions/localization_extension.dart';



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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.getLocalization()?.advanceSearch??'',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.getLocalization()?.advanceSearchTextField1??'',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1,
                    ),
                  ),
                  Container(
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
                  )
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.getLocalization()?.advanceSearchTextField2??'',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1,
                    ),
                  ),
                  Container(
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
                  )
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.getLocalization()?.advanceSearchTextField3??'',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1,
                    ),
                  ),
                  Container(
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
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.getLocalization()?.gender??'',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            context.getLocalization()?.genderOption1??'',
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
                            value: 'Female',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                          ),
                          Text(
                            context.getLocalization()?.genderOption2??'',
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
                            context.getLocalization()?.genderOption3??'',
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
                        context.getLocalization()?.genderOption4??'',
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
              Text(
                context.getLocalization()?.typeofDoctor??'',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1,
                ),
              ),
              Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        context.getLocalization()?.typeofDoctor1??'',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        context.getLocalization()?.typeofDoctor2??'',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        context.getLocalization()?.genderOption4??'',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.getLocalization()?.advanceSearchTextField4??'',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 280),
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.getLocalization()?.advanceSearchTextField5??'',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.signText1,
                    ),
                  ),
                  Container(
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 280),
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
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
                        child: Text(
                          context.getLocalization()?.advanceSearchButton1??'',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 161,
                      height: 57,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: AppColors.signUpTextButtonRadius,
                            width: 1),
                      ),
                      child: Center(
                        child: Text(
                          context.getLocalization()?.advanceSearchButton2??'',
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
            ],
          ),
        ),
      ),
    );
  }
}
