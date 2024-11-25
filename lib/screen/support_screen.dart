import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/screen/faq_screen.dart';

import '../utils/colors.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        )),
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.secondary,
          ),
        ),
        title: Text(
          'Support',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'RemdY Support: Connecting You with Family\nDoctors',
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w600,
                color: AppColors.signText1,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'Need Assistance?',
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w500,
                color: AppColors.signText1,
              ),
            ),
            Text(
              'At RemdY, we’re committed to providing exceptional support to our users. Whether you have questions about finding a family doctor or need technical assistance, we’re here to help.',
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w400,
                color: AppColors.signUpTextButtonRadius,
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              'How to Reach Us',
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w500,
                color: AppColors.signText1,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    '1. Contact Form:',
                    style: GoogleFonts.poppins(
                      fontSize:13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.signText1,
                    ),
                  ),
                ),
                const SizedBox(width: 3,),
                Text(
                  "Use our Contact Form to submit\nyour inquiries. We’ll respond promptly to\naddress your concerns.",
                  style: GoogleFonts.poppins(
                    fontSize:11,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    '2.Email:',
                    style: GoogleFonts.poppins(
                      fontSize:13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.signText1,
                    ),
                  ),
                ),
                const SizedBox(width: 3,),
                Text(
                  "Reach out to our support team\nat support@remedyview.com. We’re available\nto assist you with any queries related to family\ndoctors.",
                  style: GoogleFonts.poppins(
                    fontSize:11,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    '3.Phone:',
                    style: GoogleFonts.poppins(
                      fontSize:13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.signText1,
                    ),
                  ),
                ),
                const SizedBox(width: 3,),
                Text(
                  "Call or text us at 408-465-9003 during\nbusiness hours. Our friendly team is ready to\nguide you.",
                  style: GoogleFonts.poppins(
                    fontSize:11,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Text(
              'Frequently Asked Questions',
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w600,
                color: AppColors.signText1,
              ),
            ),
            Row(
              children: [
                Text(
                  'Check out our FAQs for answers to common\nquestions about finding family doctors,\nappointment booking, and more.',
                  style: GoogleFonts.poppins(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FaqScreen()),
                      );
                    },
                    child: Text(
                      "F&Q",
                      style: GoogleFonts.poppins(
                        fontSize:12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.waring,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Text(
              "Your Health Matters",
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w600,
                color: AppColors.signText1,
              ),
            ),
            Text(
              "At RemdY, we understand the importance of\naccessible healthcare. Let us be your partner in\nconnecting you with trusted family physicians.",
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w600,
                color: AppColors.signUpTextButtonRadius,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
