import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/screen/about_us_screen.dart';
import 'package:remdy/screen/language_screen.dart';
import 'package:remdy/screen/notification_screen.dart';
import 'package:remdy/screen/profile_screen.dart';
import 'package:remdy/screen/support_screen.dart';
import 'package:remdy/screen/term_policy_scrreen.dart';
import '../utils/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
            )),
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SizedBox(
                width: 44,
                height: 44,
                child: Image.asset(
                  'assets/profilpic.png',
                  width: 44,
                  height: 44,
                )),
            const SizedBox(width: 75),
            Text(
              'Settings',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.secondary,
              ),
            ),
            const SizedBox(width:100),
            const Icon(Icons.question_mark_outlined,color: AppColors.secondary,size: 20,)
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19,right: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 22,),
            Container(
              height: 45,
              width: 355,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  backgroundColor: AppColors.secondary,
                  elevation: 0,
                ),
                onPressed: (){},
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 69,
                      child: Text(
                       "Search settings",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.profileSearch,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 17,
                      top: 8,
                      child: Icon(
                        Icons.search_outlined,
                        color: AppColors.searchIcon,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 95,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(11)),
                      border: Border.all(
                        color: AppColors.secondary,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            'Account',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 11,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUsScreen()),
                      );
                    },
                    child: Container(
                      width: 95,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 10),
                            child: Text(
                              'About',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.profileContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TermPolicyScrreen()),
                      );
                    },
                    child: Container(
                      width: 133,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11, top: 10),
                            child: Text(
                              'Terms and Policy',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.profileContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 16),
                      child: Icon(Icons.person_outline_outlined,color: AppColors.primary,size: 26,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16,left: 85),
                      child: Text(
                        'Profile',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 120),
                      child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 16),
                      child: Icon(Icons.notifications_none_rounded,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16,left: 85),
                      child: Text(
                        'Notification',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 80),
                      child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              width: 361,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(11)),
                border: Border.all(
                  color: AppColors.secondary,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16,left: 16),
                    child: Icon(Icons.ios_share,color: AppColors.signUpTextButtonRadius,size: 26,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16,left: 85),
                    child: Text(
                      'Invite Link',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.signUpTextButtonRadius,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16,left: 80),
                    child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.signUpTextButtonRadius,size: 26,),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SupportScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 16),
                      child: Icon(Icons.headphones,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16,left: 85),
                      child: Text(
                        'Support',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 100),
                      child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LanguageScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 16),
                      child: Icon(Icons.language,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16,left: 55),
                      child: Text(
                        'Choose Language',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16,left: 60),
                      child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.signUpTextButtonRadius,size: 26,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
