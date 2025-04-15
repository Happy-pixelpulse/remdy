// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:remdy/extensions/localization_extension.dart';
// import 'package:remdy/utils/colors.dart';
//
// import '../common_widgets/doctor_list_item.dart';
// import '../common_widgets/hospitla_list.dart';
//
// class FavoriteScreen extends StatefulWidget {
//   const FavoriteScreen({super.key});
//
//   @override
//   State<FavoriteScreen> createState() => _FavoriteScreenState();
// }
//
// class _FavoriteScreenState extends State<FavoriteScreen> {
//   final Map<String, dynamic> doctors = {
//     "imagePath":
//         "https://static.vecteezy.com/system/resources/previews/027/186/029/large_2x/smiling-male-doctor-with-good-test-results-wearing-a-white-coat-and-stethoscope-looking-into-camera-on-isolated-white-background-copy-space-for-health-free-photo.jpg",
//     "name": "Yong Gon Kim",
//     "specialty": "Lab technician",
//     "patients": "Accepting Patients",
//     "rating": "4.8",
//     "is_liked": false,
//     "is_available": true
//   };
//   final Map<String, dynamic> hospital = {
//     "hospitalImage":
//         "https://static.vecteezy.com/system/resources/previews/029/278/288/non_2x/ideal-healthcare-background-with-surrealist-blurry-hospital-scene-ai-generative-free-photo.jpg",
//     "hospitalName": "Saskatoon City Hospital",
//     "is_liked": true,
//     "address": "701 Queen St, Saskatoon",
//     "chart": "35%",
//     "waitingTime": "Estimated Wait Time : 00:30 hrs",
//     "rating": "4.8",
//     "reviews": "(58 Reviews)",
//     // "distanceImage":"",
//     "distanceText": "2.5 km/40min",
//     "hospitalText": "Hospital",
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.backgroundColor,
//         appBar: AppBar(
//           flexibleSpace: FlexibleSpaceBar(
//               background: Image.asset(
//             'assets/rectangle_appbar_bg.png',
//             fit: BoxFit.fill,
//           )),
//           // leading: IconButton(
//           //   onPressed: () {
//           //     Navigator.pop(context);
//           //   },
//           //   icon: const Icon(Icons.arrow_back),
//           //   color: AppColors.secondary,
//           // ),
//           title: Text(
//             context.getLocalization()?.favorite ?? '',
//             style: GoogleFonts.poppins(
//               fontSize: 20,
//               fontWeight: FontWeight.w600,
//               color: AppColors.secondary,
//             ),
//           ),
//           centerTitle: true,
//           toolbarHeight: 70,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(
//               height: 18,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16,right: 16),
//               child: DoctorListItem(
//                 imagePath: doctors['imagePath'],
//                 doctorName: doctors['name'],
//                 specialty: doctors['specialty'],
//                 patients: doctors['patients'],
//                 rating: doctors['rating'],
//                 isLiked: doctors['is_liked'],
//                 isAvailable: doctors['is_available'],
//               ),
//             ),
//             const SizedBox(
//               height: 7,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 17,right: 17),
//               child: HospitalList(
//                 hospitalImage: hospital["hospitalImage"],
//                 hospitalName: hospital["hospitalName"],
//                 address: hospital["address"],
//                 rating: hospital["rating"],
//                 isLiked: hospital["is_liked"],
//                 reviews: hospital["reviews"],
//                 chart: hospital["chart"],
//                 waitingTime: hospital["waitingTime"],
//                 hospitalText: hospital["hospitalText"],
//                 distanceText: hospital["distanceText"],
//               ),
//             ),
//           ],
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/utils/AppSpacing.dart';
import '../common_widgets/doctor_list_item.dart';
import '../common_widgets/hospitla_list.dart';
import '../utils/colors.dart';
import 'dashboard_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<Map<String, dynamic>> doctors = [
    {
      "imagePath":
      "https://static.vecteezy.com/system/resources/previews/027/186/029/large_2x/smiling-male-doctor-with-good-test-results-wearing-a-white-coat-and-stethoscope-looking-into-camera-on-isolated-white-background-copy-space-for-health-free-photo.jpg",
      "name": "Yong Gon Kim",
      "specialty": "Lab technician",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
    {
      "imagePath": "https://i1.feedspot.com/200/5348256.jpg?t=1638262713",
      "name": "Marc Berezin",
      "specialty": "Pathologist",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": false
    },
    {
      "imagePath":
      "https://static.vecteezy.com/system/resources/previews/027/187/026/large_2x/black-doctor-with-dreadlocks-and-stethoscope-poses-in-lab-coat-against-white-background-vertical-medicine-clinic-health-photo.jpg",
      "name": "Michael Martynik",
      "specialty": "General Practitioner",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
  ];
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
      "distanceText": "2.5 km/40min",
      "hospitalText": "Hospital",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 Tabs (Doctor & Hospital)
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DashboardScreen()),
              );
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.tp),
          ),
          title: Text(
            "Favorites",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.secondary,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 70,
        ),
        body: Column(
          children: [
          const  SizedBox(height: AppSpacing.appSpacing_16,),
            Container(
              height: 50,
              color:Colors.transparent,
              child:const TabBar(
                indicator: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.all(Radius.elliptical(5,10)),
                  shape: BoxShape.rectangle
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.transparent,
                tabs: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: AppSpacing.appSpacing_44,vertical: AppSpacing.appSpacing_10),
                    child: Tab(text: "Doctor",),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: AppSpacing.appSpacing_44,vertical: AppSpacing.appSpacing_10),
                    child: Tab(text: "Hospital",),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [

                  ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      final doctor = doctors[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: DoctorListItem(
                          imagePath: doctor['imagePath'],
                          doctorName: doctor['name'],
                          specialty: doctor['specialty'],
                          patients: doctor['patients'],
                          rating: doctor['rating'],
                          isLiked: doctor['is_liked'],
                          isAvailable: doctor['is_available'],
                        ),
                      );
                      // return Card(
                      //   elevation: 2,
                      //   margin: const EdgeInsets.symmetric(vertical: 8),
                      //   child: ListTile(
                      //     leading: CircleAvatar(
                      //       backgroundImage: NetworkImage(doctor['imagePath']),
                      //       radius: 30,
                      //     ),
                      //     title: Text(
                      //       doctor['name'],
                      //       style: GoogleFonts.poppins(
                      //         fontWeight: FontWeight.w600,
                      //         fontSize: 16,
                      //       ),
                      //     ),
                      //     subtitle: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(doctor['specialty']),
                      //         Text(doctor['patients'],
                      //             style: const TextStyle(color: Colors.green)),
                      //       ],
                      //     ),
                      //     trailing: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Icon(Icons.star,
                      //             color: Colors.orange, size: 20),
                      //         Text(doctor['rating']),
                      //       ],
                      //     ),
                      //   ),
                      // );
                    },
                  ),

                  ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: hospital.length,
                    itemBuilder: (context, index) {
                      final hospitals = hospital[index];
                      return Padding(
                        padding:
                        const EdgeInsets.only(left: 17, right: 17, bottom: 12),
                        child: HospitalList(
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
                        ),
                      );
                      //   Card(
                      //   elevation: 2,
                      //   margin: const EdgeInsets.symmetric(vertical: 8),
                      //   child: ListTile(
                      //     leading: CircleAvatar(
                      //       backgroundImage:
                      //       NetworkImage(hospitals["hospitalImage"]),
                      //       radius: 30,
                      //     ),
                      //     title: Text(
                      //       hospitals["hospitalName"],
                      //       style: GoogleFonts.poppins(
                      //         fontWeight: FontWeight.w600,
                      //         fontSize: 16,
                      //       ),
                      //     ),
                      //     subtitle: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(hospitals["address"]),
                      //         Text(hospitals["waitingTime"],
                      //             style: const TextStyle(color: Colors.red)),
                      //       ],
                      //     ),
                      //     trailing: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Icon(Icons.star,
                      //             color: Colors.orange, size: 20),
                      //         Text(hospitals["rating"]),
                      //       ],
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



