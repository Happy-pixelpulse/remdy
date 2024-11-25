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
  final bool isSelected;
  const SettingScreen({super.key,  this.isSelected=false});

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
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        leading:Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Image.asset(
            'assets/profilpic.png',
          ),
        ) ,
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
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset('assets/question.png',height: 24,width: 24,),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            // color: Colors.red,
            color: AppColors.tp,
          ),
          child:Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextField(
              showCursor: false,
              cursorHeight: 12,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 12),
                border: InputBorder.none,
                suffixIcon:  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset('assets/search_icon.png',color: AppColors.hintText,)
                ),
                hintText: context.getLocalization()?.proFileScreeSearchButton ?? '',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.profileSearch,
                ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(11)),
                      border: Border.all(
                        color: AppColors.secondary,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
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
                      // width: MediaQuery.of(context).size.width/4.9,
                      // height: 42,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
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
                      // width: MediaQuery.of(context).size.width/3,
                      // height: 42,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                        child: Text(
                          context
                                  .getLocalization()
                                  ?.proFileScreenTcButton ??
                              '',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.profileContainer,
                          ),
                        ),
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
    return Card(
      color: AppColors.backgroundColor,
      child: Column(
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
                  color: //widget.isSelected?
                  AppColors.signUpTextButtonRadius,
                  //:AppColors.primary,
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
      ),
    );
  }
}
