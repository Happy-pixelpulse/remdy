import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/sort_filter.dart';
import 'package:remdy/extensions/localization_extension.dart';
import '../common_widgets/hospitla_list.dart';
import '../common_widgets/search_button.dart';
import '../utils/colors.dart';
import 'notification_screen.dart';


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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.tp,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
              child: Image.asset("assets/bell.png"),
            ),
          ),
        ],
        // leadingWidth: 24,
        title:
        Text(
          context.getLocalization()?.topHospitals ?? '',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: SearchButton(
                onPressed: () {},
                buttonName:
                context.getLocalization()?.doctorListSearchButton ?? '',
              ),
            )
          ],),
       const SortAndFilter(),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: hospital.length,
              itemBuilder: (context, index) {
                final hospitals = hospital[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 17,right: 17,bottom: 12),
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
              },
            ),
          ),
        ],
      ),
    );
  }
}