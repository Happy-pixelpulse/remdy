import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../screen/widgets/filter_widget.dart';
import '../utils/colors.dart';



class SortAndFilter extends StatefulWidget {
  const SortAndFilter({super.key});

  @override
  State<SortAndFilter> createState() => _SortAndFilterState();
}

class _SortAndFilterState extends State<SortAndFilter> {
  String _selectedReview = "Review";
  SortOptions? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: SizedBox(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 16,
            ),
            Card(
              color: AppColors.secondary,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                    color: AppColors.signText1.withOpacity(0.13), width: 1.5),
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
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 17,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        child: Text(
                                          context.getLocalization()?.sortBy ??
                                              '',
                                          style: GoogleFonts.poppins(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.bottomText,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 24),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Icon(
                                          Icons.cancel_outlined,
                                          weight: 19,
                                          color: AppColors.signText1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 17),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      border: Border.all(
                                          color: AppColors.bottomTextfield,
                                          width: 1),
                                      color: AppColors.secondary),
                                  child: Row(
                                    children: [
                                      Text(
                                        context
                                            .getLocalization()
                                            ?.sortByTextField1 ??
                                            '',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.bottomTextfieldText,
                                        ),
                                      ),
                                      RadioListTile<SortOptions>(
                                        activeColor: AppColors.primary,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        value: SortOptions.patientStories,
                                        groupValue: _selectedOption,
                                        onChanged: (SortOptions? value) {
                                          setState(() {
                                            _selectedOption = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 17, right: 17),
                                child: Container(
                                  height: 49,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      border: Border.all(
                                          color: AppColors.bottomTextfield,
                                          width: 1),
                                      color: AppColors.secondary),
                                  child: RadioListTile<SortOptions>(
                                    activeColor: AppColors.primary,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    title: Text(
                                      context
                                              .getLocalization()
                                              ?.sortByTextField2 ??
                                          '',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.bottomTextfieldText,
                                      ),
                                    ),
                                    value: SortOptions.patientStories,
                                    groupValue: _selectedOption,
                                    onChanged: (SortOptions? value) {
                                      setState(() {
                                        _selectedOption = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 17, right: 17),
                                child: Container(
                                  height: 49,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      border: Border.all(
                                          color: AppColors.bottomTextfield,
                                          width: 1),
                                      color: AppColors.secondary),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: RadioListTile<SortOptions>(
                                      activeColor: AppColors.primary,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                      title: Text(
                                        context
                                                .getLocalization()
                                                ?.sortByTextField3 ??
                                            '',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.bottomTextfieldText,
                                        ),
                                      ),
                                      value: SortOptions.patientStories,
                                      groupValue: _selectedOption,
                                      onChanged: (SortOptions? value) {
                                        setState(() {
                                          _selectedOption = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 94,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 17, right: 16),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 52,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      context.getLocalization()?.applyButton ??
                                          '',
                                      style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
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
                      padding: EdgeInsets.only(left: 5, top: 10, right: 10),
                      child: Icon(Icons.keyboard_arrow_down),
                      // Image.asset("assets/chevron-down.png"),
                    ),
                  ],
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
                  color: AppColors.secondary,
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
            Card(
              elevation: 0,
              color: AppColors.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                    color: AppColors.signText1.withOpacity(0.13), width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _selectedReview,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.70),
                      ),
                    ),
                    PopupMenuButton<String>(
                      color: AppColors.tp,
                      onSelected: (value) {
                        setState(() {
                          _selectedReview = value;
                        });
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: "5/4 star",
                          child: Text(
                            context.getLocalization()?.review1 ?? '',
                          ),
                        ),
                        PopupMenuItem(
                          value: "3/2 star",
                          child: Text(context.getLocalization()?.review2 ?? ''),
                        ),
                        PopupMenuItem(
                          value: "1 star",
                          child: Text(context.getLocalization()?.review3 ?? ''),
                        ),
                      ],
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: AppColors.secondary,
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
    );
  }
}
