import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../utils/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        )),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.secondary,
        ),
        title: Text(
          context.getLocalization()?.notification??'',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.secondary,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: ListView(
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 11),
                child: Container(
                  width: 363,
                  height: 74,
                  decoration: BoxDecoration(
                    color: AppColors.drContainer,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif')),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 8),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 137),
                            child: Text(
                              'adipiscing elit.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 172),
                            child: Text(
                              '1m ago.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.notificationText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        child:Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  width: 363,
                  height: 74,
                  decoration: BoxDecoration(
                    color: AppColors.drContainer,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif')),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 8),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 137),
                            child: Text(
                              'adipiscing elit.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 172),
                            child: Text(
                              '1m ago.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.notificationText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        child:Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  width: 363,
                  height: 74,
                  decoration: BoxDecoration(
                    color: AppColors.drContainer,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif')),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 8),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 137),
                            child: Text(
                              'adipiscing elit.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 172),
                            child: Text(
                              '1m ago.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.notificationText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        child:Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  width: 363,
                  height: 74,
                  decoration: BoxDecoration(
                    color: AppColors.drContainer,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif')),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 8),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 137),
                            child: Text(
                              'adipiscing elit.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.signText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 172),
                            child: Text(
                              '1m ago.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.notificationText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        child:Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
