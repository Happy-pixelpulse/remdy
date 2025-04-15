import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/bloc/internet_connection_bloc/internet_connection_bloc.dart';
import 'package:remdy/bloc/internet_connection_bloc/internet_connection_event.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/profile_screen.dart';
import 'package:remdy/screen/widgets/shimmer_effect.dart';
import 'package:remdy/utils/AppSpacing.dart';

import '../bloc/home_screen_bloc/home_screen_bloc.dart';
import '../bloc/home_screen_bloc/home_screen_event.dart';
import '../bloc/home_screen_bloc/home_screen_state.dart';
import '../bloc/home_screen_bloc/model/patients_location/patient_location_response.dart';
import '../bloc/internet_connection_bloc/internet_connection_state.dart';
import '../common_widgets/doctor_card.dart';
import '../utils/colors.dart';
import 'advance_search.dart';
import 'doctor_list.dart';
import 'notification_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late HomeScreenBloc _homeScreenBloc;
  late InternetBloc _internetBloc;
  PatientLocationResponse? _patientLocationResponse;

  @override
  void initState() {
    super.initState();
    _homeScreenBloc = BlocProvider.of<HomeScreenBloc>(context);
    _homeScreenBloc.add(PatientLocation());
    _internetBloc = BlocProvider.of<InternetBloc>(context);
    _internetBloc.add(InternetStatusChanged(true));
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
                        height: 450,
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: AppColors.secondary,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  context.getLocalization()?.address ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
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
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                // height:  MediaQuery.of(context).size.height,
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
                                width: MediaQuery.of(context).size.width,
                                // height:  MediaQuery.of(context).size.height,
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
                                width: MediaQuery.of(context).size.width,
                                // height:  MediaQuery.of(context).size.height,
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
                                width: MediaQuery.of(context).size.width,
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
                        height: 450,
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: AppColors.secondary,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  context.getLocalization()?.address ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
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
                            const SizedBox(
                              height: 21,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                // height:  MediaQuery.of(context).size.height,
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
                                width: MediaQuery.of(context).size.width,
                                // height:  MediaQuery.of(context).size.height,
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
                                width: MediaQuery.of(context).size.width,
                                // height:  MediaQuery.of(context).size.height,
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
                                width: MediaQuery.of(context).size.width,
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
              child: BlocListener<HomeScreenBloc, HomeScreenState>(
                listener: (context, state) {
                  if (state is PatientLocationResponseState) {
                    _homeScreenBloc.add(NearByDoctor());
                    _patientLocationResponse = state.patientLocationResponse;
                  }
                },
                child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
                  builder: (context, state) {
                    debugPrint("error====>>>>>${_patientLocationResponse?.success}");
                    if (_patientLocationResponse == null) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerEffect(width: AppSpacing.appSpacing_80, height: AppSpacing.appSpacing_20),
                          const SizedBox(height: AppSpacing.appSpacing_8),
                          ShimmerEffect(width: 100, height: AppSpacing.appSpacing_16),
                        ],
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            _patientLocationResponse?.data?.address ?? '',
                            // context.getLocalization()?.location ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: AppColors.secondary,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.appSpacing_2),
                          Text(
                            _patientLocationResponse?.data?.city ?? '',
                            // context.getLocalization()?.country ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondary,
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
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
                  width: AppSpacing.appSpacing_24,
                  height:AppSpacing.appSpacing_24,
                  child: Image.asset(
                    'assets/bell.png',
                    width: AppSpacing.appSpacing_24,
                    height: AppSpacing.appSpacing_24,
                  )),
            ),
            const SizedBox(width: AppSpacing.appSpacing_12),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: SizedBox(
                  width: AppSpacing.appSpacing_44,
                  height: AppSpacing.appSpacing_44,
                  child: Image.asset(
                    'assets/profilpic.png',
                    width: AppSpacing.appSpacing_44,
                    height: AppSpacing.appSpacing_44,
                  )),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocListener<InternetBloc, InternetState>(
        listener: (context, state) {
          if (state is InternetConnectedState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You are online!'),
                backgroundColor: AppColors.primary,
                duration: Duration(seconds: 2),
              ),
            );
          } else if (state is InternetDisconnectedState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You are offline!'),
                backgroundColor: AppColors.waring,
                duration: Duration(seconds: 2),
              ),
            );
          }
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            context.getLocalization()?.title ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: AppColors.secondary,
                            ),
                          ),
                          Text(
                            context.getLocalization()?.subTitle ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: AppColors.secondary,
                            ),
                          ),
                          const SizedBox(
                            height: AppSpacing.appSpacing_14,
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
                                      context
                                              .getLocalization()
                                              ?.advanceSearch ??
                                          '',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    SizedBox(
                                        width: AppSpacing.appSpacing_22,
                                        height: AppSpacing.appSpacing_22,
                                        child: Image.asset(
                                          'assets/quicksearch.png',
                                          width: AppSpacing.appSpacing_22,
                                          height: AppSpacing.appSpacing_22,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: AppSpacing.appSpacing_12,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DoctorList()),
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
                                    width: AppSpacing.appSpacing_18,
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
              const SizedBox(height: AppSpacing.appSpacing_18),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  context.getLocalization()?.nearbyDoctor ?? '',
                  // 'Nearby doctor',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
              ),
              BlocBuilder<HomeScreenBloc, HomeScreenState>(
                builder: (context, state) {
                  if (state is NearByDoctorResponseState) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.appSpacing_14),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: AppSpacing.appSpacing_10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          childAspectRatio: 0.85,
                        ),
                        itemCount:
                            state.nearByDoctorResponse.data?.doctor.length,
                        itemBuilder: (context, index) {
                          final doctor =
                              state.nearByDoctorResponse.data?.doctor[index];
                          return DoctorCard(
                            imagePath: doctor?.profileImageUrl ?? '',
                            doctorName: doctor?.doctorFullName ?? '',
                            specialty: doctor?.doctorSpeciality ?? '',
                            reviews: doctor?.reviewsCount.toString() ?? '',
                            rating: doctor?.averageRating.toString() ?? '',
                            isActive: true,
                          );
                        },
                      ),
                    );
                  } else {
                    return ShimmerEffect(width: AppSpacing.appSpacing_80, height: AppSpacing.appSpacing_20);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
