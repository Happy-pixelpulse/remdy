import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/search_button.dart';
import 'package:remdy/common_widgets/sort_filter.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/notification_screen.dart';



import '../common_widgets/doctor_list_item.dart';
import '../utils/colors.dart';

enum FilterEnum { distance, availability, gender, experience }

enum SortOptions { patientStories, experience, distance }

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
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
    {
      "imagePath":
          "https://static.vecteezy.com/system/resources/previews/027/215/837/large_2x/male-doctor-with-a-stethoscope-smiling-at-the-camera-wearing-a-white-coat-and-glasses-posing-on-a-gray-isolated-background-photo.jpg",
      "name": "Alex Leyberman",
      "specialty": "Neurologist",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": true
    },
    {
      "imagePath":
          "https://static.vecteezy.com/system/resources/previews/026/375/411/large_2x/ai-generative-portrait-of-doctor-standing-in-corridor-at-hospital-doctor-looking-at-camera-photo.jpg",
      "name": "John Danchik",
      "specialty": "Nurse",
      "patients": "Accepting Patients",
      "rating": "4.8",
      "is_liked": false,
      "is_available": false
    },
    {
      "imagePath":
          "https://static.vecteezy.com/system/resources/previews/023/570/077/large_2x/portrait-of-girl-doctor-illustration-ai-generative-free-photo.jpg",
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
        title: Text(
          context.getLocalization()?.doctorListTitle ?? '',
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
          Stack(
            children: [
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
            ],
          ),
          
          const SortAndFilter(),
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
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 5, right: 20, bottom: 8),
                    child: DoctorListItem(
                      imagePath: doctor["imagePath"],
                      doctorName: doctor["name"],
                      specialty: doctor["specialty"],
                      patients: doctor["patients"],
                      rating: doctor["rating"],
                      isLiked: doctor["is_liked"],
                      isAvailable: doctor["is_available"],
                    ),
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
