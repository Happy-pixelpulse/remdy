import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import '../common_widgets/doctor_list_item.dart';
import '../common_widgets/hospitla_list.dart';
import '../utils/colors.dart';

class FavoriteScreen2 extends StatefulWidget {
  const FavoriteScreen2({super.key});

  @override
  State<FavoriteScreen2> createState() => _FavoriteScreen2State();
}

class _FavoriteScreen2State extends State<FavoriteScreen2> {

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
  String selectedButton = "Doctor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.tp,
            )),
        title: Text(
          context.getLocalization()?.favorite ?? '',
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
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 17, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedButton = "Doctor";
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      color: selectedButton == "Doctor"
                          ? AppColors.favorite
                          : AppColors.secondary,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: selectedButton == "Doctor"
                            ? AppColors.favoriteDr
                            : AppColors.favoriteDr1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Text(
                      "Doctor",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: selectedButton == "Doctor"
                            ? AppColors.secondary
                            : AppColors.favoriteHospital,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedButton = "Hospital";
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      color: selectedButton == "Hospital"
                          ? AppColors.favorite
                          : AppColors.secondary,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: selectedButton == "Hospital"
                            ? AppColors.favoriteDr
                            : AppColors.favoriteDr1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Text(
                      "Hospital",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: selectedButton == "Hospital"
                            ? AppColors.secondary
                            : AppColors.favoriteHospital,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Expanded(
            child: ListView.builder(
              itemCount:
                  selectedButton == "Doctor" ? doctors.length : hospital.length,
              itemBuilder: (context, index) {
                if (selectedButton == "Doctor") {
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
                } else {
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
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
