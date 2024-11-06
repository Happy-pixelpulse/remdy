import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../screen/notification_screen.dart';
import '../utils/colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/rectangle_appbar_bg.png',
            fit: BoxFit.fill,
          )),
      toolbarHeight: 70,
      elevation: 0,
      leadingWidth: 24,
      title: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: AppColors.secondary,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  AppLocalizations.of(context)!.advanceSearch,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondary,
                  ),
                ),
                const SizedBox(
                  width: 55,
                ),
                GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()),
                      );
                    },
                    child: Image.asset("assets/bell.png"))
              ],
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
