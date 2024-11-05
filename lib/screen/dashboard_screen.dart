import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common_widgets/doctor_card.dart';
import '../utils/colors.dart';
import 'advance_search.dart';
import 'doctor_list.dart';
import 'notification_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map<String, String>> doctors = [
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/vactor/vactor_1.jfif",
      "name": "Dr. Bellamy N",
      "specialty": "Viralogist",
      "reviews": "(135 reviews)",
      "rating": "4.5"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_1.jfif",
      "name": "Dr. Mensah T",
      "specialty": "Oncologists",
      "reviews": "(135 reviews)",
      "rating": "4.3"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_2.jfif",
      "name": "Dr. Klimisch J",
      "specialty": "Surgeon",
      "reviews": "(135 reviews)",
      "rating": "4.5"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_3.jfif",
      "name": "Dr. Martinez K",
      "specialty": "Pediatrician",
      "reviews": "(135 reviews)",
      "rating": "4.3"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif",
      "name": "Dr. Marc M",
      "specialty": "Rheumatologists",
      "reviews": "(135 reviews)",
      "rating": "4.3"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_5.jfif",
      "name": "Dr. O’Boyle J",
      "specialty": "Radiologists",
      "reviews": "(135 reviews)",
      "rating": "4.5"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_6.jfif",
      "name": "Dr. Mensah T",
      "specialty": "Surgeon",
      "reviews": "(135 reviews)",
      "rating": "4.3"
    },
    {
      "imagePath":
      "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_7.jfif",
      "name": "Dr. Bellamy R",
      "specialty": "Viralogist",
      "reviews": "(135 reviews)",
      "rating": "4.5"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: 394,
                        height: 433,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
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
                                      color: AppColors.bottomText,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.cancel_outlined,
                                      weight: 19,
                                      color: AppColors.signText1,
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
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.cancel_outlined),
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
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.cancel_outlined),
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
                                      labelText: "Building / Floor / Apartment",
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
                                    color: AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.cancel_outlined),
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
                                      labelText: "Near by Landmark (Optional)",
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
                                    backgroundColor: AppColors.primary,
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
                                      color: AppColors.secondary,
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
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: 394,
                        height: 433,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
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
                                      color: AppColors.bottomText,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.cancel_outlined,
                                      weight: 19,
                                      color: AppColors.signText1,
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
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.cancel_outlined),
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
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.cancel_outlined),
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
                                      labelText: "Building / Floor / Apartment",
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
                                    color: AppColors.secondary),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                        vertical: 25.0,
                                        horizontal: 10.0,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: const Icon(Icons.cancel_outlined),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText: "Near by Landmark (Optional)",
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
                                    backgroundColor: AppColors.primary,
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
                                      color: AppColors.secondary,
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
              onTap: () {
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/rectangle.png'),
                Positioned(
                  top: 110,
                  left: 16,
                  right: 16,
                   child:Text(//"Let's find a Family",
                    AppLocalizations.of(context)!.title,
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondary,
                    ),
                  ),
                ),
                Positioned(
                  top: 145,
                  left: 16,
                  right: 16,
                  child: Text(
                    AppLocalizations.of(context)!.subTitle,
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondary,
                    ),
                  ),
                ),
                Positioned(
                  top: 185,
                  left: 222,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdvanceSearch()),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'Advance Search',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                        const SizedBox(width: 6),
                        SizedBox(
                            width: 22,
                            height: 22,
                            child: Image.asset(
                              'assets/quicksearch.png',
                              width: 22,
                              height: 22,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230, left: 16, right: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorList()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.secondary),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 21.96),
                            child: Image.asset(
                              'assets/search.png',
                              width: 26.35,
                              height: 26.5,
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Search health issue.......',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.searchBoxText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 10),
              child: Text(
                'Nearby doctor',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signText1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 17,
                  // mainAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return DoctorCard(
                    imagePath: doctor["imagePath"]!,
                    doctorName: doctor["name"]!,
                    specialty: doctor["specialty"]!,
                    reviews: doctor["reviews"]!,
                    rating: doctor["rating"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}