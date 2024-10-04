import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/search_button.dart';
import 'package:remdy/screen/advance_search.dart';

import '../common_widgets/dr_list.dart';
import '../utils/colors.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final List<Map<String, dynamic>> doctors = [
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/vactor/vactor_1.jfif",
      "name": "Yong Gon Kim",
      "specialty": "Lab technician",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_1.jfif",
      "name": "Marc Berezin",
      "specialty": "Pathologist",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": false
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_2.jfif",
      "name": "Michael Martynik",
      "specialty": "General Practitioner",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_3.jfif",
      "name": "Alex Leyberman",
      "specialty": "Neurologist",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_4.jfif",
      "name": "John Danchik",
      "specialty": "Nurse",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": false
    },
    {
      "imagePath":
          "https://pixelwallpaper.pixelpulseinc.com/assets/nature/Nature_5.jfif",
      "name": "Marc Golden",
      "specialty": "Pathologist",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.secondary,
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Top Doctor',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
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
              SearchButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdvanceSearch()),
                    );
                  },
                  buttonName: "Search Doctor")
            ],
          ),
        ),
        automaticallyImplyLeading: false,
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
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 11, top: 10),
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
                            GestureDetector(
                              onTap: (){
                               showModalBottomSheet(context: context, builder: (BuildContext context){
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
                                           left: 150,
                                         ),
                                         child: Row(
                                           children: [
                                             Text(
                                               'Sort By',
                                               style: GoogleFonts.poppins(
                                                 fontSize: 22,
                                                 fontWeight: FontWeight.w400,
                                                 color: AppColors.bottom_text,
                                               ),
                                             ),
                                             const SizedBox(
                                               width: 95           ,
                                             ),
                                             GestureDetector(
                                               onTap: () {
                                                 Navigator.pop(context);
                                               },
                                               child:const Icon(
                                                 Icons.cancel_outlined,
                                                 weight: 19,
                                                 color:
                                                 AppColors.sign_text1,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 21,
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(left: 17,right: 17),
                                         child: Container(
                                             width: 360,
                                             height: 49,
                                             decoration: BoxDecoration(
                                                 borderRadius: const BorderRadius.all(Radius.circular(15)),
                                                 border: Border.all(color: AppColors.bottom_textfield, width: 1),
                                                 color: AppColors.secondary
                                             ),
                                             child: Row(
                                               children: [
                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Text(
                                                     'Number of patient stories-High to low',
                                                     style: GoogleFonts.poppins(
                                                       fontSize: 16,
                                                       fontWeight: FontWeight.w400,
                                                       color: AppColors.bottom_text1,
                                                     ),
                                                   ),
                                                 ),
                                                 const Icon(
                                                   Icons.circle_outlined,
                                                   weight: 19,
                                                   color:
                                                   AppColors.sign_text1,
                                                 ),
                                               ],
                                             )
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 21,
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(left: 17,right: 17),
                                         child: Container(
                                             width: 360,
                                             height: 49,
                                             decoration: BoxDecoration(
                                                 borderRadius: const BorderRadius.all(Radius.circular(15)),
                                                 border: Border.all(color: AppColors.bottom_textfield, width: 1),
                                                 color: AppColors.secondary
                                             ),
                                             child: Row(
                                               children: [
                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Text(
                                                     'Experience-High to Low',
                                                     style: GoogleFonts.poppins(
                                                       fontSize: 15,
                                                       fontWeight: FontWeight.w400,
                                                       color: AppColors.bottom_text1,
                                                     ),
                                                   ),
                                                 ),
                                                 const Padding(
                                                   padding:  EdgeInsets.only(left: 115),
                                                   child: Icon(
                                                     Icons.circle_outlined,
                                                     weight: 19,
                                                     color:
                                                     AppColors.sign_text1,
                                                   ),
                                                 ),
                                               ],
                                             )
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 21,
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(left: 17,right: 17),
                                         child: Container(
                                             width: 360,
                                             height: 49,
                                             decoration: BoxDecoration(
                                                 borderRadius: const BorderRadius.all(Radius.circular(15)),
                                                 border: Border.all(color: AppColors.bottom_textfield, width: 1),
                                                 color: AppColors.secondary
                                             ),
                                             child: Padding(
                                               padding: const EdgeInsets.all(8.0),
                                               child: Row(
                                                 children: [
                                                   Padding(
                                                     padding: const EdgeInsets.all(8.0),
                                                     child: Text(
                                                       'Distance-Near to Far',
                                                       style: GoogleFonts.poppins(
                                                         fontSize: 15,
                                                         fontWeight: FontWeight.w400,
                                                         color: AppColors.bottom_text1,
                                                       ),
                                                     ),
                                                   ),
                                                   const Padding(
                                                     padding: EdgeInsets.only(left: 122),
                                                     child: Icon(
                                                       Icons.circle_outlined,
                                                       weight: 19,
                                                       color:
                                                       AppColors.sign_text1,
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             )
                                         ),
                                       ),
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
                                               'Apply',
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
                               } );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, top: 10),
                                child: Image.asset("assets/chevron-down.png"),
                              ),
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
                            padding: const EdgeInsets.only(left: 10, top: 11),
                            child: Text(
                              'Filter',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sign_text1.withOpacity(0.70),
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
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 10),
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
                            padding: const EdgeInsets.only(left: 5, top: 10),
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
                            padding: const EdgeInsets.only(left: 11, top: 10),
                            child: Text(
                              'Insurance',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sign_text1.withOpacity(0.70),
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
          ),
          const SizedBox(
            height: 3,
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return Doctor(
                    imagePath: doctor["imagePath"],
                    doctorName: doctor["name"],
                    specialty: doctor["specialty"],
                    patients: doctor["patients"],
                    rating: doctor["rating"],
                    isLiked: doctor["is_liked"],
                    isAvailable: doctor["is_available"],
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
