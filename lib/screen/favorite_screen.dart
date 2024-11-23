import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/utils/colors.dart';

import '../common_widgets/dr_list.dart';
import '../common_widgets/hospitla_list.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final Map<String, dynamic> doctors =
    {
      "imagePath":
      "https://static.vecteezy.com/system/resources/previews/027/186/029/large_2x/smiling-male-doctor-with-good-test-results-wearing-a-white-coat-and-stethoscope-looking-into-camera-on-isolated-white-background-copy-space-for-health-free-photo.jpg",
      "name": "Yong Gon Kim",
      "specialty": "Lab technician",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    };
  final Map<String, dynamic> hospital =
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
    };
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
          icon: const Icon(Icons.arrow_back),
          color: AppColors.secondary,
        ),
        title: Text(
          context.getLocalization()?.favorite??'',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.secondary,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Doctor(
      imagePath: doctors['imagePath'],
        doctorName: doctors['name'],
        specialty: doctors['specialty'],
        patients: doctors['patients'],
        rating:doctors['rating'],
        isLiked: doctors['is_liked'],
        isAvailable: doctors['is_available'],
      ),
          const SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: HospitalList(
          hospitalImage: hospital["hospitalImage"],
          hospitalName: hospital["hospitalName"],
          address: hospital["address"],
          rating: hospital["rating"],
          isLiked: hospital["is_liked"],
          reviews: hospital["reviews"],
          chart: hospital["chart"],
          waitingTime: hospital["waitingTime"],
          hospitalText: hospital["hospitalText"],
          distanceText: hospital["distanceText"],
        ),
      ),
        ],
      )
    );
  }
}
