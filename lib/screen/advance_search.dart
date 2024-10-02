import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class AdvanceSearch extends StatefulWidget {
  const AdvanceSearch({super.key});

  @override
  State<AdvanceSearch> createState() => _AdvanceSearchState();
}

class _AdvanceSearchState extends State<AdvanceSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
            )),
        toolbarHeight: 70,
        elevation: 0,
        leadingWidth: 24,
        title: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.secondary.withOpacity(1),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Advance Search',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary.withOpacity(1),
                    ),
                  ),
                  const SizedBox(
                    width:55,
                  ),
                  Image.asset("assets/bell.png")
                ],
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: SizedBox(
        height: 85,
        width: 393,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Home.png'),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Hospital.png'),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Favorite.png'),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/Profile.png'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 29,left: 16),
            child: Text(
              'Advanced Search',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: AppColors.sign_text1,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Full Name:',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.sign_text1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 41,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(20), // Adjust value for roundness
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 11,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'City/Town:',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.sign_text1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 41,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(20), // Adjust value for roundness
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 11,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Postal Code(eg. M5G):',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.sign_text1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 41,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(20), // Adjust value for roundness
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
