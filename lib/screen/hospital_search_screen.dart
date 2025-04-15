import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/common_widgets/clinic_card.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/profile_screen.dart';
import 'package:remdy/screen/widgets/shimmer_effect.dart';

import '../bloc/home_screen_bloc/home_screen_bloc.dart';
import '../bloc/home_screen_bloc/home_screen_event.dart';
import '../bloc/home_screen_bloc/home_screen_state.dart';
import '../bloc/hospital_bloc/hospital_bloc.dart';
import '../bloc/hospital_bloc/hospital_screen_event.dart';
import '../bloc/hospital_bloc/hospital_screen_state.dart';
import '../common_widgets/hospital_card.dart';
import '../utils/colors.dart';
import 'advance_search.dart';
import 'hospital.dart';
import 'notification_screen.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({super.key});

  @override
  State<HospitalPage> createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  late HomeScreenBloc _homeScreenBloc;
  late NearByHospitalBloc _nearByHospitalBloc;
  final List<Map<String, dynamic>> clinicList = [
    {
      "clinicImage":
          "https://images.pexels.com/photos/159211/headache-pain-pills-medication-159211.jpeg?cs",
      "clinicName": "Saskatoon City Hospital",
    },
    {
      "clinicImage":
          "https://images.aeonmedia.co/images/afef287f-dd6f-4a6a-b8a6-4f0a09330657/sized-kendal-l4ikccachoc-unsplash.jpg?width",
      "clinicName": "Saskatoon City Hospital",
    },
    {
      "clinicImage":
          "https://img.freepik.com/free-photo/flat-lay-medical-elements-arrangement_23-2148502905.jpg",
      "clinicName": "Saskatoon City Hospital",
    },
  ];

  @override
  void initState() {
    super.initState();
    _homeScreenBloc = BlocProvider.of<HomeScreenBloc>(context);
    _homeScreenBloc.add(PatientLocation());
    _nearByHospitalBloc = BlocProvider.of<NearByHospitalBloc>(context);
    _nearByHospitalBloc.add(NearByHospital());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.cover,
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
                                left: 34,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    context.getLocalization()?.address ?? '',
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
                                      labelText:
                                          context.getLocalization()?.area ?? '',
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextField),
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
                                      labelText:
                                          context.getLocalization()?.building ??
                                              '',
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextField),
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
                                      labelText:
                                          context.getLocalization()?.landMark ??
                                              '',
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextField),
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
                                    context.getLocalization()?.confirmAddress ??
                                        '',
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
                                left: 34,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    context.getLocalization()?.address ?? '',
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
                                      labelText:
                                          context.getLocalization()?.area ?? '',
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextField),
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
                                      labelText:
                                          context.getLocalization()?.building ??
                                              '',
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextField),
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
                                      labelText:
                                          context.getLocalization()?.landMark ??
                                              '',
                                      labelStyle: const TextStyle(
                                          color: AppColors.bottomTextField),
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
                                    context.getLocalization()?.confirmAddress ??
                                        '',
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
              child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
                builder: (context, state) {
                  if (state is PatientLocationResponseState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          state.patientLocationResponse.data?.address ?? '',
                          // context.getLocalization()?.location ?? '',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: AppColors.secondary,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          state.patientLocationResponse.data?.city ?? '',
                          // context.getLocalization()?.country ?? '',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerEffect(width: 80, height: 20),
                        const SizedBox(height: 8),
                        ShimmerEffect(width: 100, height: 16),
                      ],
                    );
                  }
                },
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    );
                  },
                  child: Image.asset(
                    'assets/profilpic.png',
                    width: 44,
                    height: 44,
                  ),
                )),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.passthrough,
              children: [
                Image.asset(
                  'assets/rectangle.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.13,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.getLocalization()?.hospitalTitle ?? '',
                          maxLines: 1,
                          //overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: AppColors.secondary,
                          ),
                        ),
                        Text(
                          context.getLocalization()?.hospitalSubTitle ?? '',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: AppColors.secondary,
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AdvanceSearch()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    context.getLocalization()?.advanceSearch ??
                                        '',
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
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hospital()),
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
                                  context
                                          .getLocalization()
                                          ?.searchHealthIssue ??
                                      '',
                                  // 'Search health issue.......',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: 46,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: AppColors.waring.withOpacity(0.65),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Text(
                    context.getLocalization()?.hospitalWaringText ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.waring,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                context.getLocalization()?.nearbyMedicalCenters ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.headLine,
                ),
              ),
            ),
            const SizedBox(height: 10),
            BlocBuilder<NearByHospitalBloc, HospitalScreenState>(
              builder: (context, state) {
                if (state is NearByHospitalResponseState) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: SizedBox(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            state.nearByHospitalResponseModel.data?.length ?? 0,
                        itemBuilder: (context, index) {
                          final hospitals =
                              state.nearByHospitalResponseModel.data?[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: HospitalCard(
                              hospitalImage: hospitals?.hospitalImage ?? '',
                              hospitalName: hospitals?.name ?? '',
                              address: hospitals?.address ?? '',
                              rating: hospitals?.averageRating ?? '',
                              reviews: hospitals?.reviewsCount.toString() ?? '',
                              isLiked: true,
                              hospitalText: "Hospital",
                              distanceText:
                                  hospitals?.travelTime.toString() ?? '',
                            ),
                          );
                        },
                      ),
                    ),
                  );
                } else {
                 return ShimmerEffect(width: 80, height: 20);
                }
              },
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: clinicList.length,
                  itemBuilder: (context, index) {
                    final clinic = clinicList[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: ClinicCard(
                        clinicImage: clinic["clinicImage"],
                        clinicName: clinic["clinicName"],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
