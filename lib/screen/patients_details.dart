import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/utils/colors.dart';

class DrDetails extends StatefulWidget {
  const DrDetails({super.key});

  @override
  State<DrDetails> createState() => _DrDetailsState();
}

class _DrDetailsState extends State<DrDetails> {

  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  List<String> options = <String>['Male','Female','Other'];
  String dropdownValue = 'Male';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45,),
            Container(
            width: 364,
            height: 61,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              color: AppColors.secondary,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    context.getLocalization()?.patientsDetailsTitle??'',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w600,
                      color: AppColors.signText1,
                    ),
                  ),
                   const SizedBox(width: 120,),
                   IconButton(
                     icon:  const Icon(Icons.cancel_outlined),
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     color: AppColors.signText1,
                   ),
                ],
              ),
            ),
          ),
           const SizedBox(height: 15,),
           TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: context.getLocalization()?.patientsName??'',
              labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),

          ),
          const SizedBox(
            height: 10,
          ),
           TextField(
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText:context.getLocalization()?.patientsEmail??'',
              labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),

          ),
          const SizedBox(
            height: 10,
          ),
           TextField(
             keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: context.getLocalization()?.patientsPhoneNumber??'',
              labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),

          ),
          const SizedBox(
            height: 10,
          ),
           TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: context.getLocalization()?.patientsAddress??'',
              labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),

          ),
          const SizedBox(
            height: 10,
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Flexible(
                 child: TextField(
                   decoration: InputDecoration(
                     suffixIcon: const Icon(Icons.keyboard_arrow_down),
                     focusColor: AppColors.signUpTextButtonRadius,
                     fillColor: AppColors.signUpTextButtonRadius,
                     enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     focusedBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     labelText: context.getLocalization()?.patientsCity??'',
                     labelStyle: const TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.w500,
                         color: AppColors.signText1),
                   ),

                 ),
               ),
               const SizedBox(width: 15,),
               Flexible(
                 child: TextField(
                   decoration: InputDecoration(
                     suffixIcon: const Icon(Icons.keyboard_arrow_down),
                     focusColor: AppColors.signUpTextButtonRadius,
                     fillColor: AppColors.signUpTextButtonRadius,
                     enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     focusedBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     labelText: context.getLocalization()?.patientsProvince??'',
                     labelStyle: const TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.w500,
                         color: AppColors.signText1),
                   ),

                 ),
               ),
             ],
           ),
              const SizedBox(
                height: 10,
              ),
           TextField(
             keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: context.getLocalization()?.patientsPinCode??'',
              labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),

          ),
          const SizedBox(
            height: 10,
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                Flexible(
                 child: TextField(
                   // readOnly: true,
                   decoration: InputDecoration(
                     suffixIcon:
                     Padding(
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
                         items: options.map<DropdownMenuItem<String>>((String value) {
                           return DropdownMenuItem<String>(
                             value: value,
                             child: Text(value),
                           );
                         }).toList(),
                       ),
                     ),
                     enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(10),
                       ),
                     ),
                     focusedBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(
                           Radius.circular(10)),
                     ),
                     labelText: context.getLocalization()?.patientsGender ?? '',
                     labelStyle: const TextStyle(
                         color: AppColors.signUpTextButtonRadius),
                   ),

                 ),
               ),
               const SizedBox(width: 15,),
               Flexible(
                 child: TextField(
                   controller: _dateController,
                     readOnly: true,
                   decoration:  InputDecoration(
                     suffixIcon: IconButton(
                       icon: const Icon(Icons.keyboard_arrow_down),
                       onPressed: () => _selectDate(context),
                     ),
                     focusColor: AppColors.signUpTextButtonRadius,
                     fillColor: AppColors.signUpTextButtonRadius,
                     enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     focusedBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     labelText:context.getLocalization()?.patientsDateOfBirth??'',
                     labelStyle: const TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.w500,
                         color: AppColors.signText1),
                   ),
                 ),
               ),
             ],
           ),
          const SizedBox(height: 15,),
          Text(
            context.getLocalization()?.patientsPreviously??'',
            style: GoogleFonts.poppins(
              fontSize: 15,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w500,
              color: AppColors.signText1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio<String>(
                activeColor: AppColors.primary,
                value: 'Female',
                groupValue: null,
                onChanged: (value) {
                  setState(() {

                  });
                },
              ),
              Text(
                context.getLocalization()?.patientsOption1??'',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1,
                ),
              ),
              Radio<String>(
                activeColor: AppColors.primary,
                value: 'Male',
                groupValue: null,
                onChanged: (value) {
                  setState(() {

                  });
                },
              ),
              Text(
                context.getLocalization()?.patientsOption2??'',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: context.getLocalization()?.patientsFamilyDoctor??'',
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.hintText,
              ),
            ),
          ),
              const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 103,right: 103),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.primary,
                backgroundColor: AppColors.secondary,
                side: const BorderSide(color: AppColors.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
                minimumSize: const Size(161,51),
              ),
              child: Text(
                context.getLocalization()?.patientsDoneButton??'',
                style: GoogleFonts.poppins(
                  color: AppColors.primary, // Text color
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    ),);
  }
}
