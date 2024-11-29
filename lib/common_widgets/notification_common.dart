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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical:4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
            ),
            child: ListTile(
              leading:   Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://static2.bigstockphoto.com/4/4/3/large1500/344901277.jpg',
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
                title:  Text(
                  'Lorem ipsum dolor sit amet,consectetur adipiscing elit.',
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.signText1,
                  ),
                ),
                subtitle:  Text(
                  '1m ago.',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.notificationText,
                  ),
                ),
              trailing: CircleAvatar(
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
