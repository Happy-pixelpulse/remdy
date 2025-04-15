import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import '../screen/notification_screen.dart';
import '../utils/AppSpacing.dart';
import '../utils/colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        ),
      ),
      centerTitle: true,
      toolbarHeight: AppSpacing.appSpacing_80,
      elevation: 0,
      title: Text(
        context.getLocalization()?.advanceSearch ?? '',
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.secondary,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
              child: Image.asset("assets/bell.png")),
        )
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: AppSpacing.appSpacing_20),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.secondary,
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
