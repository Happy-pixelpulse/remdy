import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
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
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        )),
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:SizedBox(
            width: 44,
            height: 44,
            child: Image.asset(
              'assets/profilpic.png',
              width: 44,
              height: 44,
            )) ,
         title: Text(
           context.getLocalization()?.proFileTitle ?? '',
           style: GoogleFonts.poppins(
             fontSize: 20,
             fontWeight: FontWeight.w600,
             color: AppColors.secondary,
           ),
         ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.question_mark_outlined,
              color: AppColors.secondary,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  backgroundColor: AppColors.secondary,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.getLocalization()?.proFileScreeSearchButton ??
                            '',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.profileSearch,
                        ),
                      ),
                       Image.asset('assets/search_icon.png',color: AppColors.hintText,),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
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
                            context
                                    .getLocalization()
                                    ?.proFileScreenAccountButton ??
                                '',
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
                  const SizedBox(
                    width: 11,
                  ),
                  GestureDetector(
                    onTap: () {
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11)),
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
                              context
                                      .getLocalization()
                                      ?.proFileScreenAboutButton ??
                                  '',
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
                    onTap: () {
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              context
                                      .getLocalization()
                                      ?.proFileScreenTcButton ??
                                  '',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
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
            getListItemView(Icons.person_outline_outlined,
                context.getLocalization()?.proFileScreeProFileButton ?? '', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            }),
            getListItemView(Icons.notifications_none_rounded,
                context.getLocalization()?.proFileScreeNotificationButton ?? '',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationScreen()),
              );
            }),
            getListItemView(
                Icons.ios_share,
                context.getLocalization()?.proFileScreeInviteLinkButton ?? '',
                () {}),
            getListItemView(Icons.headphones,
                context.getLocalization()?.proFileScreeSupportButton ?? '', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SupportScreen()),
              );
            }),
            getListItemView(
                Icons.language,
                context.getLocalization()?.proFileScreeChooseLanguageButton ??
                    '', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LanguageScreen()),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget getListItemView(IconData icon, String name, GestureTapCallback onTap) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(11)),
              border: Border.all(
                color: AppColors.secondary,
              ),
            ),
            child: ListTile(
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.signUpTextButtonRadius,
                size: 26,
              ),
              leading: Icon(
                icon,
                color: AppColors.signUpTextButtonRadius,
                size: 26,
              ),
              title: Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
