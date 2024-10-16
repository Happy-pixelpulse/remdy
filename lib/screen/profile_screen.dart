import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16,right: 17),
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text("Profile updated")),
            // );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(360, 60),
            backgroundColor: AppColors.primary,
          ),
          child:  Text(
            'UPDATE',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/profileBackgroung.png',
          fit: BoxFit.fill,
        )),
        toolbarHeight: 218,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: AppColors.secondary,
              ),
              const SizedBox(
                width: 80,
              ),
              Text(
                'Profile',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondary,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Stack(
                  children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_1.jfif",
                  ),
                ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80,left: 80),
                      child: Icon(Icons.add,color: AppColors.signText1,size: 35,),
                    )
              ]),
            ),
             SizedBox(height: 19,),
            Container(
                width: 360,
                height: 49,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon:
                        const Icon(Icons.cancel_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Name",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
            SizedBox(height: 11,),
            Container(
                width: 360,
                height: 49,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                    suffixText: "Change",
                      suffixStyle:  const TextStyle(
                          color: AppColors.waring),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Mobile",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
            SizedBox(height: 11,),
            Container(
                width: 360,
                height: 49,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixText: "Change",
                      suffixStyle:  const TextStyle(
                          color: AppColors.waring),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Email",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
            SizedBox(height: 11,),
            Container(
                width: 360,
                height: 49,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon:
                        const Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Gender",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
