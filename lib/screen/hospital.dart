import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/widgets/filter_widget.dart';

import '../common_widgets/hospitla_list.dart';
import '../common_widgets/search_button.dart';
import '../utils/colors.dart';
import 'notification_screen.dart';

enum FilterEnum { distance, availability, gender, experience }

enum SortOptions { patientStories, experience, distance }

class Hospital extends StatefulWidget {
  const Hospital({super.key});

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  final List<Map<String, dynamic>> hospital = [
    {
      "hospitalImage":
          "https://static.vecteezy.com/system/resources/previews/029/278/288/non_2x/ideal-healthcare-background-with-surrealist-blurry-hospital-scene-ai-generative-free-photo.jpg",
      "hospitalName": "Saskatoon City Hospital",
      "is_liked": true,
      "address": "701 Queen St, Saskatoon",
      "chart": "35%",
      "waitingTime": "Estimated Wait Time : 00:30 hrs",
      "rating": "4.8",
      "reviews": "(58 Reviews)",
      // "distanceImage":"",
      "distanceText": "2.5 km/40min",
      "hospitalText": "Hospital",
    },
    {
      "hospitalImage":
          "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yNV9zaW1wbGVfM2RfaWxsdXN0cmF0aW9uX29mX2FfcmVjb3Zlcnlfcm9vbV93aV80ZjhkNDIwNC02N2I4LTQwMDQtYTBlNy05YjljMjIyMzE2ZGVfMS5qcGc.jpg",
      "hospitalName": "St. Joseph’s Hospital",
      "is_liked": false,
      "address": "268 Grosvenor St, London",
      "chart": "73%",
      "waitingTime": "Estimated Wait Time : 03:55 hrs",
      "rating": "4.8",
      "reviews": "(58 Reviews)",
      // "distanceImage":"",
      "distanceText": "2.5 km/40min",
      "hospitalText": "Hospital",
    },
    {
      "hospitalImage":
          "https://t4.ftcdn.net/jpg/08/46/22/05/360_F_846220562_W5a8Vri4eKlgHmItWKdlRin0KIDhV7Rz.jpg",
      "hospitalName": "Banff–Mineral Springs Hospital",
      "is_liked": false,
      "address": "305 Lynx St, Banff",
      "chart": "105%",
      "waitingTime": "Estimated Wait Time : 06:55 hrs",
      "rating": "4.8",
      "reviews": "(58 Reviews)",
      // "distanceImage":"",
      "distanceText": "2.5 km/40min",
      "hospitalText": "Hospital",
    },
  ];
  String _selectedReview = "Review";
  SortOptions? _selectedOption;

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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.secondary,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    context.getLocalization()?.topHospitals ?? '',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(
                    width: 88,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationScreen()),
                        );
                      },
                      child: Image.asset("assets/bell.png"))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SearchButton(
                onPressed: () {},
                buttonName: context.getLocalization()?.searchHospitals ?? '',
              )
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: GestureDetector(
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
                                          left: 120,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              context.getLocalization()?.sortBy??'',
                                              style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.bottomText,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 40,
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child: Container(
                                          width: 360,
                                          height: 49,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color:
                                                  AppColors.bottomTextfield,
                                                  width: 1),
                                              color: AppColors.secondary),
                                          child: RadioListTile<SortOptions>(
                                            activeColor: AppColors.primary,
                                            controlAffinity:
                                            ListTileControlAffinity
                                                .trailing,
                                            title: Text(
                                              context.getLocalization()?.sortByTextField1??'',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors
                                                    .bottomTextfieldText,
                                              ),
                                            ),
                                            value: SortOptions.patientStories,
                                            groupValue: _selectedOption,
                                            onChanged: (SortOptions? value) {
                                              setState(() {
                                                _selectedOption = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child: Container(
                                          width: 360,
                                          height: 49,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color:
                                                  AppColors.bottomTextfield,
                                                  width: 1),
                                              color: AppColors.secondary),
                                          child: RadioListTile<SortOptions>(
                                            activeColor: AppColors.primary,
                                            controlAffinity:
                                            ListTileControlAffinity
                                                .trailing,
                                            title: Text(
                                              context.getLocalization()?.sortByTextField2??'',
                                              style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors
                                                    .bottomTextfieldText,
                                              ),
                                            ),
                                            value: SortOptions.patientStories,
                                            groupValue: _selectedOption,
                                            onChanged: (SortOptions? value) {
                                              setState(() {
                                                _selectedOption = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child: Container(
                                          width: 360,
                                          height: 49,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color:
                                                  AppColors.bottomTextfield,
                                                  width: 1),
                                              color: AppColors.secondary),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: RadioListTile<SortOptions>(
                                              activeColor: AppColors.primary,
                                              controlAffinity:
                                              ListTileControlAffinity
                                                  .trailing,
                                              title: Text(
                                                context.getLocalization()?.sortByTextField3??'',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors
                                                      .bottomTextfieldText,
                                                ),
                                              ),
                                              value: SortOptions.patientStories,
                                              groupValue: _selectedOption,
                                              onChanged: (SortOptions? value) {
                                                setState(() {
                                                  _selectedOption = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 94,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 16),
                                        child: SizedBox(
                                          width: 361,
                                          height: 52,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              AppColors.primary,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              context.getLocalization()?.applyButton??'',
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 10),
                              child: Text(
                                context.getLocalization()?.sortBy??'',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.signText1.withOpacity(0.70),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 10),
                              child: Image.asset("assets/chevron-down.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const FilterWidget();
                          },
                        );
                      },
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 11),
                              child: Text(
                                context.getLocalization()?.filter??'',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.signText1.withOpacity(0.70),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 11),
                              child: Icon(Icons.tune),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    height: 43,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _selectedReview,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.70),
                              ),
                            ),
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                setState(() {
                                  _selectedReview = value;
                                });
                              },
                              icon: Icon(Icons.keyboard_arrow_down),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: "5 / 4 star",
                                  child: Text(
                                    context.getLocalization()?.review1??'',
                                  ),
                                ),
                                PopupMenuItem(
                                  value: "3 / 2 star",
                                  child:
                                  Text(context.getLocalization()?.review2??''),
                                ),
                                PopupMenuItem(
                                  value: "1 star",
                                  child:
                                  Text(context.getLocalization()?.review3??''),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                            padding: const EdgeInsets.only(left: 11, top: 10),
                            child: Text(
                              context.getLocalization()?.insurance??'',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.signText1.withOpacity(0.70),
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
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: hospital.length,
                itemBuilder: (context, index) {
                  final hospitals = hospital[index];
                  return HospitalList(
                    hospitalImage: hospitals["hospitalImage"],
                    hospitalName: hospitals["hospitalName"],
                    address: hospitals["address"],
                    rating: hospitals["rating"],
                    isLiked: hospitals["is_liked"],
                    reviews: hospitals["reviews"],
                    chart: hospitals["chart"],
                    waitingTime: hospitals["waitingTime"],
                    hospitalText: hospitals["hospitalText"],
                    distanceText: hospitals["distanceText"],
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