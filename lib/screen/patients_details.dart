import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:remdy/utils/colors.dart';

class DrDetails extends StatefulWidget {
  const DrDetails({super.key});

  @override
  State<DrDetails> createState() => _DrDetailsState();
}

class _DrDetailsState extends State<DrDetails> {

  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;


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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text(
                    'Patients Details',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w600,
                      color: AppColors.signText1,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                 IconButton(
                   icon:  Icon(Icons.cancel_outlined),
                   onPressed: (){
                     Navigator.pop(context);
                   },
                   color: AppColors.signText1,
                 ),
              ],
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: "Full Name:",
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: "Email",
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: "Phone Number",
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: "Address",
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      focusColor: AppColors.signUpTextButtonRadius,
                      fillColor: AppColors.signUpTextButtonRadius,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "City",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(width: 15,),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      focusColor: AppColors.signUpTextButtonRadius,
                      fillColor: AppColors.signUpTextButtonRadius,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Province",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              focusColor: AppColors.signUpTextButtonRadius,
              fillColor: AppColors.signUpTextButtonRadius,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: "Pin Code",
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signText1),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      focusColor: AppColors.signUpTextButtonRadius,
                      fillColor: AppColors.signUpTextButtonRadius,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Gender",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(width: 15,),
                Flexible(
                  child: TextField(
                    controller: _dateController,
                      readOnly: true,
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () => _selectDate(context),
                      ),
                      focusColor: AppColors.signUpTextButtonRadius,
                      fillColor: AppColors.signUpTextButtonRadius,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Date Of Birth",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signText1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Text(
            'Did you previously had a family doctor ?',
            style: GoogleFonts.poppins(
              fontSize: 15,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w500,
              color: AppColors.signText1,
            ),
          ),
          Row(
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
                'Yes',
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
                'No',
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
              hintText: "If yes name of the doctor",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.hintText,
              ),
            ),
            //obscureText: true,
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
                'Done',
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
