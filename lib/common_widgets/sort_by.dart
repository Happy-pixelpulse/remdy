import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../screen/doctor_list.dart';
import '../utils/colors.dart';

class SortBy extends StatefulWidget {
  const SortBy({super.key});

  @override
  State<SortBy> createState() => _SortByState();
}

class _SortByState extends State<SortBy> {
  SortOptions? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  child: Text(
                    context.getLocalization()?.sortBy ?? '',
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
        const SizedBox(height: 12,),
        Expanded(
          child: Column(children: [
            _getItemList(context.getLocalization()?.sortByTextField1 ?? '', SortOptions.patientStories),
            const SizedBox(
              height: 21,
            ),
            _getItemList(
              context.getLocalization()?.sortByTextField2 ?? '',
              SortOptions.experience,
            ),
            const SizedBox(
              height: 21,
            ),
            _getItemList(context.getLocalization()?.sortByTextField3 ?? '', SortOptions.distance),
            const SizedBox(
              height: 21,
            ),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16,left: 16,bottom: 27),
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
                context.getLocalization()?.applyButton ?? '',
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
    );
  }
  Widget _getItemList(String name, SortOptions sortOptions) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: AppColors.bottomTextField, width: 1),
            color: AppColors.secondary),
        child: RadioListTile<SortOptions>(
          activeColor: AppColors.primary,
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.bottomTextFieldText,
            ),
          ),
          value: sortOptions,
          groupValue: _selectedOption,
          onChanged: (SortOptions? value) {
            setState(() {
              _selectedOption = value;
            });
          },
        ),
      ),
    );
  }
}
