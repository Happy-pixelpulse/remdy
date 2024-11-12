// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:remdy/common_widgets/hospital_card.dart';
// import 'package:remdy/extensions/localization_extension.dart';
//
// import '../utils/colors.dart';
// import 'advance_search.dart';
// import 'hospital_list.dart';
// import 'notification_screen.dart';
//
// class HospitalPage extends StatefulWidget {
//   const HospitalPage({super.key});
//
//   @override
//   State<HospitalPage> createState() => _HospitalPageState();
// }
//
// class _HospitalPageState extends State<HospitalPage> {
//   final List<Map<String, String>> hospitals = [
//     {
//       "imagePath":
//       "https://thumbs.dreamstime.com/b/doctors-hospital-corridor-nurse-pushing-gurney-stretcher-bed-male-senior-female-patient-32154012.jpg",
//       "hospitalName": "Saskatoon City Hospital",
//       "address": "701 Queen St, Saskatoon",
//       "reviews": "(135 reviews)",
//       "rating": "4.5"
//     },
//     {
//       "imagePath":
//       "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yNV9zaW1wbGVfM2RfaWxsdXN0cmF0aW9uX29mX2FfcmVjb3Zlcnlfcm9vbV93aV80ZjhkNDIwNC02N2I4LTQwMDQtYTBlNy05YjljMjIyMzE2ZGVfMS5qcGc.jpg",
//       "hospitalName": "St. Joseph’s Hospital",
//       "address": "268 Grosvenor St, London",
//       "reviews": "(135 reviews)",
//       "rating": "4.3"
//     },
//     {
//       "imagePath":
//       "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yNV9zaW1wbGVfM2RfaWxsdXN0cmF0aW9uX29mX2FfcmVjb3Zlcnlfcm9vbV93aV80ZjhkNDIwNC02N2I4LTQwMDQtYTBlNy05YjljMjIyMzE2ZGVfMS5qcGc.jpg",
//       "hospitalName": "Banff – Mineral Springs Hospital",
//       "address": "305 Lynx St, Banff",
//       "reviews": "(135 reviews)",
//       "rating": "4.3"
//     },
//     {
//       "imagePath":
//       "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yNV9zaW1wbGVfM2RfaWxsdXN0cmF0aW9uX29mX2FfcmVjb3Zlcnlfcm9vbV93aV80ZjhkNDIwNC02N2I4LTQwMDQtYTBlNy05YjljMjIyMzE2ZGVfMS5qcGc.jpg",
//       "hospitalName": "Lamont Health Care Centre",
//       "address": "5216 53 Street, Lamont",
//       "reviews": "(135 reviews)",
//       "rating": "4.3"
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         flexibleSpace: FlexibleSpaceBar(
//             background: Image.asset(
//               'assets/rectangle_appbar_bg.png',
//               fit: BoxFit.fill,
//             )),
//         toolbarHeight: 70,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Row(
//           children: [
//             GestureDetector(
//               onTap: () {
//                 showModalBottomSheet(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return  Container(
//                         width: 394,
//                         height: 433,
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(20),
//                               topRight: Radius.circular(20)),
//                           color: AppColors.secondary,
//                         ),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 17,
//                                 left: 34,
//                               ),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     context.getLocalization()?.address??'',
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 22,
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColors.bottomText,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 17,
//                                   ),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pop(context);
//                                     },
//                                     child: const Icon(
//                                       Icons.cancel_outlined,
//                                       weight: 19,
//                                       color: AppColors.signText1,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 21,
//                             ),
//                             Container(
//                                 width: 360,
//                                 height: 49,
//                                 decoration: const BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                         bottomRight: Radius.circular(10)),
//                                     color: AppColors.secondary),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17, right: 17),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       suffixIcon: IconButton(
//                                         icon: const Icon(Icons.cancel_outlined),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                       ),
//                                       enabledBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       focusedBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       labelText: context.getLocalization()?.area??'',
//                                       labelStyle: const TextStyle(
//                                           color: AppColors.bottomTextfield),
//                                     ),
//                                     obscureText: true,
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 21,
//                             ),
//                             Container(
//                                 width: 360,
//                                 height: 49,
//                                 decoration: const BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                         bottomRight: Radius.circular(10)),
//                                     color: AppColors.secondary),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17, right: 17),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       suffixIcon: IconButton(
//                                         icon: const Icon(Icons.cancel_outlined),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                       ),
//                                       enabledBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       focusedBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       labelText: context.getLocalization()?.building??'',
//                                       labelStyle: const TextStyle(
//                                           color: AppColors.bottomTextfield),
//                                     ),
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 21,
//                             ),
//                             Container(
//                                 width: 360,
//                                 height: 49,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     color: AppColors.secondary),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17, right: 17),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       suffixIcon: IconButton(
//                                         icon: const Icon(Icons.cancel_outlined),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                       ),
//                                       enabledBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       focusedBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       labelText: context.getLocalization()?.landMark??'',
//                                       labelStyle: const TextStyle(
//                                           color: AppColors.bottomTextfield),
//                                     ),
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 94,
//                             ),
//                             Padding(
//                               padding:
//                               const EdgeInsets.only(left: 17, right: 16),
//                               child: SizedBox(
//                                 width: 361,
//                                 height: 52,
//                                 child: ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: AppColors.primary,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text(
//                                     context.getLocalization()?.confirmAddress??'',
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 19,
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColors.secondary,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     });
//               },
//               child: SizedBox(
//                   width: 24,
//                   height: 24,
//                   child: Image.asset(
//                     'assets/map-pin.png',
//                     width: 24,
//                     height: 24,
//                   )),
//             ),
//             const SizedBox(
//               width: 8,
//             ),
//             GestureDetector(
//               onTap: () {
//                 showModalBottomSheet(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return  Container(
//                         width: 394,
//                         height: 433,
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(20),
//                               topRight: Radius.circular(20)),
//                           color: AppColors.secondary,
//                         ),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 17,
//                                 left: 34,
//                               ),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     context.getLocalization()?.address??'',
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 22,
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColors.bottomText,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 17,
//                                   ),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pop(context);
//                                     },
//                                     child: const Icon(
//                                       Icons.cancel_outlined,
//                                       weight: 19,
//                                       color: AppColors.signText1,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 21,
//                             ),
//                             Container(
//                                 width: 360,
//                                 height: 49,
//                                 decoration: const BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                         bottomRight: Radius.circular(10)),
//                                     color: AppColors.secondary),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17, right: 17),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       suffixIcon: IconButton(
//                                         icon: const Icon(Icons.cancel_outlined),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                       ),
//                                       enabledBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       focusedBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       labelText: context.getLocalization()?.area??'',
//                                       labelStyle: const TextStyle(
//                                           color: AppColors.bottomTextfield),
//                                     ),
//                                     obscureText: true,
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 21,
//                             ),
//                             Container(
//                                 width: 360,
//                                 height: 49,
//                                 decoration: const BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                         bottomRight: Radius.circular(10)),
//                                     color: AppColors.secondary),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17, right: 17),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       suffixIcon: IconButton(
//                                         icon: const Icon(Icons.cancel_outlined),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                       ),
//                                       enabledBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       focusedBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       labelText: context.getLocalization()?.building??'',
//                                       labelStyle: const TextStyle(
//                                           color: AppColors.bottomTextfield),
//                                     ),
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 21,
//                             ),
//                             Container(
//                                 width: 360,
//                                 height: 49,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     color: AppColors.secondary),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17, right: 17),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       suffixIcon: IconButton(
//                                         icon: const Icon(Icons.cancel_outlined),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                       ),
//                                       enabledBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       focusedBorder: const OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       labelText: context.getLocalization()?.landMark??'',
//                                       labelStyle: const TextStyle(
//                                           color: AppColors.bottomTextfield),
//                                     ),
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 94,
//                             ),
//                             Padding(
//                               padding:
//                               const EdgeInsets.only(left: 17, right: 16),
//                               child: SizedBox(
//                                 width: 361,
//                                 height: 52,
//                                 child: ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: AppColors.primary,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text(
//                                     context.getLocalization()?.confirmAddress??'',
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 19,
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColors.secondary,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     });
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     context.getLocalization()?.location??'',
//                     style: GoogleFonts.poppins(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w800,
//                       color: AppColors.secondary,
//                     ),
//                   ),
//                   const SizedBox(height: 2),
//                   Text(
//                     context.getLocalization()?.country??'',
//                     style: GoogleFonts.poppins(
//                       fontSize: 13,
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.secondary,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const NotificationScreen()),
//                 );
//               },
//               child: SizedBox(
//                   width: 24,
//                   height: 24,
//                   child: Image.asset(
//                     'assets/bell.png',
//                     width: 24,
//                     height: 24,
//                   )),
//             ),
//             const SizedBox(width: 12),
//             SizedBox(
//                 width: 44,
//                 height: 44,
//                 child: Image.asset(
//                   'assets/profilpic.png',
//                   width: 44,
//                   height: 44,
//                 )),
//           ],
//         ),
//         automaticallyImplyLeading: false,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Image.asset('assets/rectangle.png'),
//                 Positioned(
//                   top: 110,
//                   left: 16,
//                   right: 16,
//                   child: Text(
//                     context.getLocalization()?.title??'',
//                     style: GoogleFonts.poppins(
//                       fontSize: 32,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.secondary,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 145,
//                   left: 16,
//                   right: 16,
//                   child: Text(
//                     context.getLocalization()?.subTitle??'',
//                     style: GoogleFonts.poppins(
//                       fontSize: 32,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.secondary,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 185,
//                   left: 200,
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const AdvanceSearch()),
//                       );
//                     },
//                     child: Row(
//                       children: [
//                         Text(
//                           context.getLocalization()?.advanceSearch??'',
//                           style: GoogleFonts.poppins(
//                             fontSize: 13,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.secondary,
//                           ),
//                         ),
//                         const SizedBox(width: 6),
//                         SizedBox(
//                             width: 22,
//                             height: 22,
//                             child: Image.asset(
//                               'assets/quicksearch.png',
//                               width: 22,
//                               height: 22,
//                             )),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 230, left: 16, right: 16),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const HospitalList()),
//                       );
//                     },
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           color: AppColors.secondary),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 21.96),
//                             child: Image.asset(
//                               'assets/search.png',
//                               width: 26.35,
//                               height: 26.5,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 18,
//                           ),
//                           Text(
//                             context.getLocalization()?.searchHospital??'',
//                             style: GoogleFonts.poppins(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.searchBoxText,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15,
//                 right: 15,
//               ),
//               child: Container(
//                 width: 363,
//                 height: 52,
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   border: Border.all(
//                     color: AppColors.waring.withOpacity(0.2),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 5, left: 2),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 15),
//                         child: Text(
//                           context.getLocalization()?.hospitalTitle??'',
//                           style: GoogleFonts.poppins(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.waring,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         context.getLocalization()?.hospitalSubTitle??'',
//                         style: GoogleFonts.poppins(
//                           fontSize: 10,
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.waring,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 11),
//             Padding(
//               padding: const EdgeInsets.only(left: 16),
//               child: Text(
//                 context.getLocalization()?.nearbyMedicalCenters??'',
//                 style: GoogleFonts.poppins(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.headLine,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Expanded(
//                 child: SizedBox(
//                   height: 50,
//                   child: ListView.builder(
//                     itemCount: hospitals.length,
//                     itemBuilder: (context, index) {
//                       final hospital = hospitals[index];
//                       return HospitalCard(
//                         imagePath: hospital["imagePath"].toString(),
//                         hospitalName: hospital["'hospitalName'"].toString(),
//                         address: hospital['address'].toString(),
//                         rating: hospital['rating'].toString(),
//                         reviews: hospital['reviews'].toString(),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../utils/colors.dart';
import 'advance_search.dart';
import 'hospital_list.dart';
import 'notification_screen.dart';

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
                                    context.getLocalization()?.address??'',
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
                                      labelText: context.getLocalization()?.area??'',
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
                                      labelText: context.getLocalization()?.building??'',
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
                                      labelText: context.getLocalization()?.landMark??'',
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
                                    context.getLocalization()?.confirmAddress??'',
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
                                    context.getLocalization()?.address??'',
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
                                      labelText: context.getLocalization()?.area??'',
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
                                      labelText: context.getLocalization()?.building??'',
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
                                      labelText: context.getLocalization()?.landMark??'',
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
                                    context.getLocalization()?.confirmAddress??'',
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
                    context.getLocalization()?.location??'',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    context.getLocalization()?.country??'',
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
                    context.getLocalization()?.title??'',
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
                    context.getLocalization()?.subTitle??'',
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
                          context.getLocalization()?.advanceSearch??'',
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
                            context.getLocalization()?.searchHospital??'',
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
                          context.getLocalization()?.hospitalTitle??'',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.waring,
                          ),
                        ),
                      ),
                      Text(
                        context.getLocalization()?.hospitalSubTitle??'',
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
                context.getLocalization()?.nearbyMedicalCenters??'',
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
                        GestureDetector(
                          onTap:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HospitalList()),
                            );
                          },
                          child: SizedBox(
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
                                        'https://t4.ftcdn.net/jpg/05/53/02/83/360_F_553028378_IjvuYSJ1vREwJHrvUo8uNW96wfOcjoRS.jpg',
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
                                          'Saskatoon City Hospital',
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
                                              '701 Queen St,Saskatoon',
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
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ReBcDJZhPg61Oo5N5rzlr6IH_fw8atxtricCFd3NzDeStJnj-1E1lNKpnvkiKfVmDaJJyA&s',
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
                                    'Saskatoon Clinic',
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