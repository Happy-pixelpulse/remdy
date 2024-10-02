import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/search_button.dart';
import '../common_widgets/dr_list.dart';
import '../utils/colors.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final List<Map<String, String>> doctors = [
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/vactor/vactor_1.jfif",
      "name": "Dr. Bellamy N",
      "specialty": "Viralogist",
      "patients": "(135 patients)",
      "rating": "4.5"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_1.jfif",
      "name": "Dr. Mensah T",
      "specialty": "Oncologists",
      "patients": "(135 patients)",
      "rating": "4.3"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_2.jfif",
      "name": "Dr. Klimisch J",
      "specialty": "Surgeon",
      "patients": "(135 patients)",
      "rating": "4.5"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_3.jfif",
      "name": "Dr. Martinez K",
      "specialty": "Pediatrician",
      "patients": "(135 patients)",
      "rating": "4.3"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif",
      "name": "Dr. Marc M",
      "specialty": "Rheumatologists",
      "patients": "(135 patients)",
      "rating": "4.3"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_5.jfif",
      "name": "Dr. O’Boyle J",
      "specialty": "Radiologists",
      "patients": "(135 patients)",
      "rating": "4.5"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_6.jfif",
      "name": "Dr. Mensah T",
      "specialty": "Surgeon",
      "patients": "(135 patients)",
      "rating": "4.3"
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_7.jfif",
      "name": "Dr. Bellamy R",
      "specialty": "Viralogist",
      "patients": "(135 patients)",
      "rating": "4.5"
    },
  ];
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        )),
        toolbarHeight: 120,
        elevation: 0,
        leadingWidth: 24,
        title: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.secondary.withOpacity(1),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Top Doctor',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary.withOpacity(1),
                    ),
                  ),
                  const SizedBox(
                    width: 88,
                  ),
                 Image.asset("assets/bell.png")
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SearchButton(onPressed: () {}, buttonName: "Search Doctor")
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: SizedBox(
        height: 85,
        width: 393,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Home.png'),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Hospital.png'),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Favorite.png'),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Profile.png'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 14),
            child: SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11,top: 10),
                            child: Text(
                              'Sort By',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sign_text1.withOpacity(0.70),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10),
                            child: Image.asset("assets/chevron-down.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 11),
                            child: Text(
                              'Filter',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sign_text1.withOpacity(0.70),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15,),
                          const Padding(
                            padding: EdgeInsets.only(top: 11),
                            child: Icon(Icons.tune),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10),
                            child: Text(
                              'Review',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sign_text1.withOpacity(0.70),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10),
                            child: Image.asset("assets/chevron-down.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11,top: 10),
                            child: Text(
                              'Insurance',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sign_text1.withOpacity(0.70),
                              ),
                            ),
                          ),
                          // Spacer(),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 5,top: 10),
                          //   child: Image.asset("assets/chevron-down.png"),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 3,),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return Doctor(
                    imagePath: doctor["imagePath"]!,
                    doctorName: doctor["name"]!,
                    specialty: doctor["specialty"]!,
                    patients: doctor["patients"]!,
                    rating: doctor["rating"]!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
