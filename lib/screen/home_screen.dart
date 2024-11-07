import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/screen/about_us_screen.dart';
import 'package:remdy/screen/advance_search.dart';
import 'package:remdy/screen/dashboard_screen.dart';
import 'package:remdy/screen/hospital_list.dart';
import 'package:remdy/screen/language_screen.dart';
import 'package:remdy/screen/notification_screen.dart';
import 'package:remdy/screen/profile_screen.dart';
import 'package:remdy/screen/support_screen.dart';
import 'package:remdy/screen/term_policy_scrreen.dart';
import 'package:remdy/utils/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardScreen(),
    const HospitalPage(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Image.asset('assets/Home.png'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Image.asset('assets/Hospital.png'),
            ),
            GestureDetector(
              onTap: () {
                // setState(() {
                //   _selectedIndex = 2;
                // });
              },
              child: Image.asset('assets/Favorite.png'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Image.asset('assets/Profile.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class HospitalPage extends StatefulWidget {
  const HospitalPage({super.key});

  @override
  State<HospitalPage> createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
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
                      return  Container(
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
                                left: 34,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.address,
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
                                      labelText: AppLocalizations.of(context)!.area,
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
                                      labelText: AppLocalizations.of(context)!.building,
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
                                      labelText: AppLocalizations.of(context)!.landMark,
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
                                    AppLocalizations.of(context)!.confirmAddress,
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
                      return  Container(
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
                                left: 34,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.address,
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
                                      labelText: AppLocalizations.of(context)!.area,
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
                                      labelText: AppLocalizations.of(context)!.building,
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
                                      labelText: AppLocalizations.of(context)!.landMark,
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
                                    AppLocalizations.of(context)!.confirmAddress,
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
                    AppLocalizations.of(context)!.location,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    AppLocalizations.of(context)!.country,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/rectangle.png'),
                Positioned(
                  top: 110,
                  left: 16,
                  right: 16,
                  child: Text(
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
                  left: 200,
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
                          AppLocalizations.of(context)!.advanceSearch,
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
                            builder: (context) => const HospitalList()),
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
                            AppLocalizations.of(context)!.searchHospital,
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
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Container(
                width: 363,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: AppColors.waring.withOpacity(0.2),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 2),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          AppLocalizations.of(context)!.hospitalTitle,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.waring,
                          ),
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.hospitalSubTitle,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.waring,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                AppLocalizations.of(context)!.nearbyMedicalCenters,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.headLine,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...[
                      for (int i = 0; i < 4; i++)
                        SizedBox(
                          height: 252,
                          width: 232,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            elevation: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    child: Image.network(
                                      'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif',
                                      height: 120,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 167),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_border,
                                        color: AppColors.tp,
                                      ),
                                      iconSize: 35,
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sunrise Health Clinic',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.hospitalText,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          // Image.asset('assets/map-pin.png'),
                                          const Icon(Icons.location_on,
                                              size: 16),
                                          const SizedBox(width: 4),
                                          Text(
                                            '123 Oak Street, CA 98765',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors
                                                  .hospitalLocationText,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Text(
                                            '5.0',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors
                                                  .hospitalLocationText,
                                            ),
                                          ),
                                          // RatingBarIndicator(
                                          //   rating: 5.0,
                                          //   itemBuilder: (context, index) =>
                                          //   const Icon(
                                          //     Icons.star,
                                          //     color: Colors.amber,
                                          //   ),
                                          //   itemCount: 5,
                                          //   itemSize: 18.0,
                                          //   direction: Axis.horizontal,
                                          // ),
                                          const SizedBox(width: 5),
                                          RatingBar.builder(
                                            direction: Axis.horizontal,
                                            //minRating: 1,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              if (kDebugMode) {
                                                print(rating);
                                              }
                                            },
                                            itemSize: 17,
                                            unratedColor: Colors.grey[300],
                                            glow: false,
                                            glowColor:
                                                AppColors.searchScreenRating,
                                            ignoreGestures: false,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '(58 Reviews) ',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors
                                                  .hospitalLocationText,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      const Divider(
                                        color: AppColors.notificationText,
                                        thickness: 1,
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/routing.png',
                                            height: 22,
                                            width: 22,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '2.5 km/40min',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors
                                                  .hospitalLocationText,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Image.asset(
                                            'assets/Hospital.png',
                                            height: 22,
                                            width: 22,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            'Hospital',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors
                                                  .hospitalLocationText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ]
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...[
                      for (int i = 0; i < 4; i++)
                        SizedBox(
                          height: 209,
                          width: 232,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  child: Image.network(
                                    'https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif',
                                    height: 168,
                                    width: 232,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Divider(
                                  color: AppColors.notificationText,
                                  thickness: 1,
                                  height: 10,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    'Sunrise Health Clinic',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.hospitalText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class FavoritePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Favorite Page'),
//     );
//   }
// }

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
            const SizedBox(
              width: 8,
            ),
            SizedBox(
                width: 44,
                height: 44,
                child: Image.asset(
                  'assets/profilpic.png',
                  width: 44,
                  height: 44,
                )),
            const SizedBox(width: 75),
            Text(
              AppLocalizations.of(context)!.proFileTitle,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.secondary,
              ),
            ),
            const SizedBox(width: 70),
            const Icon(
              Icons.question_mark_outlined,
              color: AppColors.secondary,
              size: 20,
            )
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19, right: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 45,
              width: 355,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  backgroundColor: AppColors.secondary,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 69,
                      child: Text(
                        AppLocalizations.of(context)!.proFileScreeSearchButton,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.profileSearch,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 17,
                      top: 8,
                      child: Icon(
                        Icons.search_outlined,
                        color: AppColors.searchIcon,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 95,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(11)),
                      border: Border.all(
                        color: AppColors.secondary,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            AppLocalizations.of(context)!.proFileScreenAccountButton,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondary,
                            ),
                          ),
                        ),
                      ],
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
                      width: 95,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 10),
                            child: Text(
                              AppLocalizations.of(context)!.proFileScreenAboutButton,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.profileContainer,
                              ),
                            ),
                          ),
                        ],
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
                      width: 133,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                          color: AppColors.secondary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              AppLocalizations.of(context)!.proFileScreenTcButton,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.profileContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: AppColors.primary,
                        size: 26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 85),
                      child: Text(
                        AppLocalizations.of(context)!.proFileScreeProFileButton,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 120),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: Icon(
                        Icons.notifications_none_rounded,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 85),
                      child: Text(
                        AppLocalizations.of(context)!.proFileScreeNotificationButton,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 80),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 361,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(11)),
                border: Border.all(
                  color: AppColors.secondary,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Icon(
                      Icons.ios_share,
                      color: AppColors.signUpTextButtonRadius,
                      size: 26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 85),
                    child: Text(
                      AppLocalizations.of(context)!.proFileScreeInviteLinkButton,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.signUpTextButtonRadius,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 50),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.signUpTextButtonRadius,
                      size: 26,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SupportScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: Icon(
                        Icons.headphones,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 85),
                      child: Text(
                        AppLocalizations.of(context)!.proFileScreeSupportButton,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 100),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LanguageScreen()),
                );
              },
              child: Container(
                width: 361,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: Icon(
                        Icons.language,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 55),
                      child: Text(
                        AppLocalizations.of(context)!.proFileScreeChooseLanguageButton,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.signUpTextButtonRadius,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 60),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.signUpTextButtonRadius,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
