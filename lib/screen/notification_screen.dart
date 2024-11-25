import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../common_widgets/notification_common.dart';
import '../utils/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
        )),
        elevation: 4,
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
        toolbarHeight: 90,
      ),
      body: ListView.builder(
        itemCount: 4,
         itemBuilder: (BuildContext contex,int index){
          return const NotificationCommon();
         }
      ),
    );
  }
}
