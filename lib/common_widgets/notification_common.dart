import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class NotificationCommon extends StatefulWidget {
  const NotificationCommon({super.key});

  @override
  State<NotificationCommon> createState() => _NotificationCommonState();
}

class _NotificationCommonState extends State<NotificationCommon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical:10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // height: 74,
            decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://static2.bigstockphoto.com/4/4/3/large1500/344901277.jpg',
                      fit: BoxFit.cover,
                      width: 65,
                      height: 65,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.signText1,
                        ),
                      ),
                      Text(
                        '1m ago.',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.notificationText,
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.red,
                  child: Text(
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
          const Divider(
            color: AppColors.patientsContainer,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
