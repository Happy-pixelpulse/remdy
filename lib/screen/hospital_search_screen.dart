import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/utils/colors.dart';

import 'notification_screen.dart';

class HospitalSearchScreenSearchScreen  extends StatelessWidget {
  const HospitalSearchScreenSearchScreen ({super.key});

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
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: 394,
                        height: 433,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: AppColors.secondary,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 17,
                                left: 64,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Enter Complete Address',
                                    style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.bottomText
                                      ,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      weight: 19,
                                      color:
                                      AppColors.signText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: 360,
                                height: 49,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color:
                                    AppColors.secondary),
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
                                            Radius.circular(10)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText: "Area / Sectore / Locality",
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextfield),
                                    ),
                                    obscureText: true,
                                  ),
                                )),
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: 360,
                                height: 49,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color:
                                    AppColors.secondary),
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
                                            Radius.circular(10)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText:
                                      "Building / Floor / Apartment",
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextfield),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: 360,
                                height: 49,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                    AppColors.secondary),
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
                                            Radius.circular(10)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText:
                                      "Near by Landmark (Optional)",
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextfield),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 94,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 17, right: 16),
                              child: SizedBox(
                                width: 361,
                                height: 52,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                    AppColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Confirm Address',
                                    style: GoogleFonts.poppins(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400,
                                      color:
                                      AppColors.secondary,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/map-pin.png',
                    width: 24,
                    height: 24,
                  )),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: 394,
                        height: 433,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: AppColors.secondary,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 17,
                                left: 50,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Enter Complete Address',
                                    style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.bottomText
                                      ,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      weight: 19,
                                      color:
                                      AppColors.signText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: 360,
                                height: 49,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color:
                                    AppColors.secondary),
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
                                            Radius.circular(10)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText: "Area / Sectore / Locality",
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextfield),
                                    ),
                                    obscureText: true,
                                  ),
                                )),
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: 360,
                                height: 49,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color:
                                    AppColors.secondary),
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
                                            Radius.circular(10)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText:
                                      "Building / Floor / Apartment",
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextfield),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: 360,
                                height: 49,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                    AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 25.0,
                                        horizontal: 10.0,
                                      ),
                                      suffixIcon: IconButton(
                                        icon:
                                        const Icon(Icons.cancel_outlined),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText:
                                      "Near by Landmark (Optional)",
                                      labelStyle: const TextStyle(
                                        color: AppColors.bottomTextfield,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 94,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 17, right: 16),
                              child: SizedBox(
                                width: 361,
                                height: 52,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                    AppColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Confirm Address',
                                    style: GoogleFonts.poppins(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400,
                                      color:
                                      AppColors.secondary,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Barrie',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Ontario, Canada',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
              child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/bell.png',
                    width: 24,
                    height: 24,
                  )),
            ),
            const SizedBox(width: 12),
            SizedBox(
                width: 44,
                height: 44,
                child: Image.asset(
                  'assets/profilpic.png',
                  width: 44,
                  height: 44,
                )),
          ],
        ),
        automaticallyImplyLeading: false,
        // flexibleSpace:
        // FlexibleSpaceBar(
        //     background:  Image.asset('assets/rectangle.png',fit: BoxFit.fill,),),
      ),
    );
  }
}
