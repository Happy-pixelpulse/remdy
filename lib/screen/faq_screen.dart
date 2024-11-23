import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
          "FAQ",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 17,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Text(
                "Frequently Asked Questions (FAQ) - RemdY",
                style: GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "1.What is RemdY?",
                style: GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              Text(
                "RemdY is a revolutionary approach to primary care.\nWe provide compassionate, relationship-based\nhealth services without limits or barriers. Our Direct\nPrimary Care model simplifies the entire process,\nallowing you to maximize the benefits of primary\ncare.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "2.How Does RemdY Work?",
                style: GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              Text(
                "Membership: Members pay one flat monthly fee and gain unlimited access to their doctor.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Communication Channels: Reach out to your\ndoctor via texts, phone calls, video chats, or even\nhouse visits.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Guaranteed Appointments: Enjoy same-day or\nnext-day appointments.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Holistic Care: Our doctors focus on your whole\nbody and lifestyle, not just specific issues.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Holistic Care: Our doctors focus on your whole\nbody and lifestyle, not just specific issues.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Flexible Clinics: Visit any RemdY clinic across\nOklahoma with on-site labs, X-rays, and\npharmacies.",
                style: GoogleFonts.poppins(
                  fontSize:13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "3.Who Are RemdY’s Doctors?",
                style: GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              Text(
                "Choose from our team of leading primary health care\nexperts. We have male, female, and Spanish-\nspeaking physicians who treat all ages—from\nnewborns and up.",
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "4.What Makes RemdY Different?",
                style: GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              Text(
                "Longer Appointments: Spend quality time with\nyour doctor during focused appointments\n(averaging 45 minutes).",
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Coordination of Care: We’ll advocate for you\nacross specialists and ER visits.",
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Discounted Services: Enjoy low pre-negotiated\nprices for labs, prescriptions, and imaging.",
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Immediate Onboarding: Sign up in 30 seconds and\nget access to your doctor right away.",
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "5.What Do Our Patients Say?",
                style: GoogleFonts.poppins(
                  fontSize:14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
              Text(
                '“RemdY transformed my health care experience.\nFrom waiting weeks for an appointment to texting my\ndoctor—it’s a game-changer!” — Name A.',
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
