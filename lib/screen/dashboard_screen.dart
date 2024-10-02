import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/doctor_card.dart';
import 'package:remdy/screen/doctor_list.dart';

import '../utils/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: () {
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
                            color: AppColors.secondary.withOpacity(1),
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
                                        color: AppColors.bottom_text
                                            .withOpacity(1),
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
                                            AppColors.sign_text1.withOpacity(1),
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
                                          AppColors.secondary.withOpacity(1)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 17, right: 17),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.cancel_outlined),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          labelText:
                                              "Area / Sectore / Locality"),
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
                                          AppColors.secondary.withOpacity(1)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 17, right: 17),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.cancel_outlined),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          labelText:
                                              "Building / Floor / Apartment"),
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
                                          AppColors.secondary.withOpacity(1)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 17, right: 17),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.cancel_outlined),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          labelText:
                                              "Near by Landmark (Optional)"),
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
                                          AppColors.primary.withOpacity(1),
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
                                            AppColors.secondary.withOpacity(1),
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
                child: Image.asset('assets/Home.png')),
            Image.asset('assets/Hospital.png'),
            Image.asset('assets/Favorite.png'),
            Image.asset('assets/Profile.png'),
          ],
        ),
      ),
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
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/map-pin.png',
                  width: 24,
                  height: 24,
                )),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Barrie',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: AppColors.secondary.withOpacity(1),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Ontario, Canada',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondary.withOpacity(1),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/bell.png',
                  width: 24,
                  height: 24,
                )),
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
                  child: Text(
                    'Let’s find Family',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondary.withOpacity(1),
                    ),
                  ),
                ),
                Positioned(
                  top: 145,
                  left: 16,
                  right: 16,
                  child: Text(
                    'doctor!',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondary.withOpacity(1),
                    ),
                  ),
                ),
                Positioned(
                  top: 185,
                  left: 222,
                  child: Row(
                    children: [
                      Text(
                        'Advance Search',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondary.withOpacity(1),
                        ),
                      ),
                      const SizedBox(width: 10),
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
                Padding(
                  padding: const EdgeInsets.only(top: 230, left: 16, right: 16),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DoctorList()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.secondary.withOpacity(1)),
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
                              color: AppColors.search_box_text.withOpacity(1),
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
                  color: AppColors.sign_text1.withOpacity(1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 20),
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
