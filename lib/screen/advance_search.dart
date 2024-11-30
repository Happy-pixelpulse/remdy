import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/common_app_bar.dart';
import 'package:remdy/common_widgets/square_radio_widget.dart';
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
  List<String> options = <String>['English', 'French'];
  String dropdownValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CommonAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.getLocalization()?.advanceSearch ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        context.getLocalization()?.advanceSearchTextField1 ?? '',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1,
                        ),
                      ),
                    ),
                    Container(
                      height: 41,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        // Adjust radius as needed
                        border: Border.all(
                            color: AppColors.signUpTextButtonRadius,
                            width: 1), // Set border width
                      ),
                      child: const TextField(
                        showCursor: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        context.getLocalization()?.advanceSearchTextField2 ?? '',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1,
                        ),
                      ),
                    ),
                    Container(
                      height: 41,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        // Adjust radius as needed
                        border: Border.all(
                            color: AppColors.signUpTextButtonRadius,
                            width: 1), // Set border width
                      ),
                      child: const TextField(
                        showCursor: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        context.getLocalization()?.advanceSearchTextField3 ?? '',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1,
                        ),
                      ),
                    ),
                    Container(
                      height: 41,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        // Adjust radius as needed
                        border: Border.all(
                            color: AppColors.signUpTextButtonRadius,
                            width: 1), // Set border width
                      ),
                      child: const TextField(
                        showCursor: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.getLocalization()?.gender ?? '',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.signText1,
                      ),
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        SquareRadioWidget<String>(
                          selectedItem: selectedGender ?? '',
                          value: 'Female',
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          labelText: "Female",
                        ),
                        SquareRadioWidget<String>(
                          selectedItem: selectedGender ?? '',
                          value: 'Male',
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          labelText: "Male",
                        ),
                        SquareRadioWidget<String>(
                          selectedItem: selectedGender ?? '',
                          value: 'Non-Binary',
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          labelText: "Non-Binary",
                        ),
                        SquareRadioWidget<String>(
                          selectedItem: selectedGender ?? '',
                          value: 'All',
                          onChanged: (value){
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          labelText: "All",
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  context.getLocalization()?.typeofDoctor ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.signText1,
                  ),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    SquareRadioWidget<String>(
                      selectedItem: selectedDoctorType ?? '',
                      value: 'Family Doctor ',
                      onChanged: (value) {
                        setState(() {
                          selectedDoctorType = value;
                        });
                      },
                      labelText: "Family Doctor ",
                    ),
                    SquareRadioWidget<String>(
                      selectedItem: selectedDoctorType ?? '',
                      value: 'Specialist',
                      onChanged: (value) {
                        setState(() {
                          selectedDoctorType = value;
                        });
                      },
                      labelText: "Specialist",
                    ),
                    SquareRadioWidget<String>(
                      selectedItem: selectedDoctorType ?? '',
                      value: 'All',
                      onChanged: (value) {
                        setState(() {
                          selectedDoctorType = value;
                        });
                      },
                      labelText: "All",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.getLocalization()?.advanceSearchTextField4 ?? '',
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
                        padding: EdgeInsets.only(right: 5),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.keyboard_arrow_down)),
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
                      context.getLocalization()?.advanceSearchTextField5 ?? '',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.signText1,
                      ),
                    ),
                    Container(
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
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          underline: const SizedBox(),
                          isExpanded: true,
                          style: const TextStyle(color: Colors.black),
                          dropdownColor: Colors.white,
                          icon: const Icon(Icons.keyboard_arrow_down,
                              color: Colors.black),
                          selectedItemBuilder: (BuildContext context) {
                            return options.map((String value) {
                              return Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  dropdownValue,
                                ),
                              );
                            }).toList();
                          },
                          items: options
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 57),
                        backgroundColor: AppColors.backgroundColor,
                        side: const BorderSide(color: AppColors.primary),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 17),
                        child: Text(
                          context.getLocalization()?.advanceSearchButton1 ??
                              '',
                          style: GoogleFonts.poppins(
                            color: AppColors.primary, // Text color
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 57),
                        backgroundColor: AppColors.secondary,
                        side: const BorderSide(
                            color: AppColors.signUpTextButtonRadius),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Text(
                          context.getLocalization()?.advanceSearchButton2 ??
                              '',
                          style: GoogleFonts.poppins(
                            color: AppColors.signUpTextButtonRadius,
                            // Text color
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
