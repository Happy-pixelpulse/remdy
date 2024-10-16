import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.secondary,
          ),
        ),
        title: Text(
          'About Us',
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
            padding: const EdgeInsets.only(left: 16,right: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text(
                  'About RemdY: Finding Family Doctors Near You',
                  style: GoogleFonts.poppins(
                    fontSize:13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
                Text(
                  'Welcome to RemdY, your trusted resource for\nconnecting with family doctors in your area.Our\nmission is simple: to make healthcare accessible and\nconvenient for everyone. Whether you’re looking for a\nprimary care physician, pediatrician, or geriatric\nspecialist, RemdY has you covered.',
                  style: GoogleFonts.poppins(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'Our Approach',
                  style: GoogleFonts.poppins(
                    fontSize:13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
                Text(
                  'Expertise and Innovation: Founded by a board-\ncertified dermatologist, RemdY is the intersection of\nexpertise and innovation. Our focus isn’t tied to\nindustry trends but is anchored in robust\ndermatological science. Every treatment we offer has\nbeen rigorously researched, tested for safety and\nefficacy, and approved with a relentless drive for\ninnovation.',
                  style: GoogleFonts.poppins(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'How RemdY Works',
                  style: GoogleFonts.poppins(
                    fontSize:13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
                Text(
                  'Search: Use our intuitive search feature to find\nfamily physicians near you. Filter by location,\ninsurance, and other preferences.\nBook Appointments: With RemdY, making\nappointments is a breeze. Book online, and in\nmany cases, you can see the doctor within 24\nhours.\nVerified Reviews: Read real patient reviews to\nchoose the right doctor for your needs. We believe\nin transparency and trust.',
                  style: GoogleFonts.poppins(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'Our Commitment',
                  style: GoogleFonts.poppins(
                    fontSize:13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
                Text(
                  'At RemdY, we’re committed to improving your healthcare journey. Whether you’re seeking preventive care, managing chronic conditions, or simply need a check-up, our platform connects you with caring professionals who prioritize your well-being.',
                  style: GoogleFonts.poppins(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signUpTextButtonRadius,
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Join RemdY today and discover the difference personalized healthcare can make',
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
