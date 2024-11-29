import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/sort_by.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../screen/widgets/filter_widget.dart';
import '../utils/colors.dart';

class SortAndFilter extends StatefulWidget {
  const SortAndFilter({super.key});

  @override
  State<SortAndFilter> createState() => _SortAndFilterState();
}

class _SortAndFilterState extends State<SortAndFilter> {
  String? selectedValue;
  final List<String> items = [
    '5 / 4 star',
    '3 / 2 star',
    '1star',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: SizedBox(
        height: 50,
        child: IntrinsicHeight(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                height: 43,
                width: 100,
                child: Card(
                  elevation: 0,
                  color: AppColors.secondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                        color: AppColors.signText1.withOpacity(0.13), width: 1),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 433,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: AppColors.secondary,
                              ),
                              child: const SortBy(),
                            );
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 10),
                          child: Text(
                            context.getLocalization()?.sortBy ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.signText1.withOpacity(0.70),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, right: 3),
                          child: Icon(Icons.keyboard_arrow_down),
                          // Image.asset("assets/chevron-down.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 43,
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const FilterWidget();
                      },
                    );
                  },
                  child: Card(
                    color: AppColors.doctorListBackground,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                          color: AppColors.signText1.withOpacity(0.13),
                          width: 1.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 11),
                          child: Text(
                            context.getLocalization()?.filter ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.signText1.withOpacity(0.70),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 11, right: 10),
                          child: Icon(Icons.tune),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  customButton: SizedBox(
                    height: 43,
                    child: Card(
                      color: AppColors.doctorListBackground,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(
                            color: AppColors.signText1.withOpacity(0.13),
                            width: 1.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 11),
                            child: Text(
                              selectedValue ?? 'Review',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.signText1.withOpacity(0.70),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 11, right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.subReviewText,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value ?? '';
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    width: 98,
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColors.signText1.withOpacity(0.13),
                      ),
                      color: AppColors.secondary,
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 143,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.tp,
                    ),
                    offset: const Offset(-20, 0),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: WidgetStateProperty.all(6),
                      thumbVisibility: WidgetStateProperty.all(true),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                    padding: EdgeInsets.only(left: 14, right: 14),
                  ),
                ),
              ),
              Card(
                color: AppColors.doctorListBackground,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                      color: AppColors.signText1.withOpacity(0.13), width: 1.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 11, top: 10, right: 10),
                      child: Text(
                        context.getLocalization()?.insurance ?? '',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.signText1.withOpacity(0.70),
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
