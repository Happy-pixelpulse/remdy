import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import '../utils/AppSpacing.dart';
import '../utils/colors.dart';

class PickLocation extends StatefulWidget {
  const PickLocation({super.key});

  @override
  State<PickLocation> createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocation> {
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
        // leadingWidth: 24,
        title: Text(
          // "happy",
          context.getLocalization()?.pickLocationTitle ?? '',
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
                height: AppSpacing.appSpacing_60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Container(
                  height: AppSpacing.appSpacing_44,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    // color: Colors.red,
                    color: AppColors.secondary,
                  ),
                  child: TextField(
                    showCursor: true,
                    cursorHeight: AppSpacing.appSpacing_12,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 8),
                      border: InputBorder.none,
                      prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 17, right: 8),
                          child: Image.asset('assets/search_icon.png')),
                      hintText:
                          context.getLocalization()?.locationSearchButton ?? '',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: AppSpacing.appSpacing_14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.searchBoxText,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: AppSpacing.appSpacing_18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              elevation: 10,
              child: ListTile(
                leading: Image.asset(
                  'assets/map-pin.png',
                  color: AppColors.signText1,
                  height: AppSpacing.appSpacing_24,
                  width: AppSpacing.appSpacing_24,
                ),
                title: Text(
                  "Use current location",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.signText1,
                  ),
                ),
                subtitle:
                Row(
                  children: [
                    Text(
                      "Ontario",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.reviewText,
                      ),
                    ),
                    Text(
                      ", Canada",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.reviewText,
                      ),
                    ),
                  ],
                ),
                // BlocBuilder<HomeScreenBloc, HomeScreenState>(
                //   builder: (context, state) {
                //     if (state is PatientLocationResponseState) {
                //       return Text(
                //         state.patientLocationResponse.data?.city ?? 'Unknown',
                //         style: GoogleFonts.poppins(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w800,
                //           color: AppColors.secondary,
                //         ),
                //       );
                //     } else {
                //       return ShimmerEffect(width: 80, height: 20);
                //     }
                //   },
                // ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.signText1,
                  size: 24,
                ),
                onTap: () {
                  // Handle "Use current location" tap
                },
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.appSpacing_8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              elevation: 10,
              child: ListTile(
                leading: const Icon(
                  Icons.add,
                  color: AppColors.signText1,
                  size: 24,
                ),
                title: Text(
                  "Add Address",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.drList,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.signText1,
                  size: 24,
                ),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
