import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/widgets/filter_widget.dart';
import '../common_widgets/search_button.dart';
import '../utils/colors.dart';
import 'hospitaldetails.dart';
import 'notification_screen.dart';



enum FilterEnum { distance, availability, gender, experience }
enum SortOptions { patientStories, experience, distance }

class HospitalList extends StatefulWidget {
  const HospitalList({super.key});

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  String _selectedReview = "Review";
  SortOptions? _selectedOption = SortOptions.patientStories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/rectangle_appbar_bg.png',
              fit: BoxFit.fill,
            )),
        toolbarHeight: 120,
        elevation: 0,
        leadingWidth: 24,
        title: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.secondary,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    context.getLocalization()?.topHospitals??'',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(
                    width: 48,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationScreen()),
                        );
                      },
                      child: Image.asset("assets/bell.png"))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SearchButton(onPressed: () {}, buttonName: context.getLocalization()?.searchHospitals??'',)
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: GestureDetector(
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
                                          left: 120,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              context.getLocalization()?.sortBy??'',
                                              style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.bottomText,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 40,
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child:   Container(
                                          width: 360,
                                          height: 49,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color: AppColors
                                                      .bottomTextfield,
                                                  width: 1),
                                              color: AppColors.secondary),
                                          child:  RadioListTile<SortOptions>(
                                            activeColor: AppColors.primary,
                                            controlAffinity: ListTileControlAffinity.trailing,
                                            title: Text(
                                              context.getLocalization()?.sortByTextField1??'',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.bottomTextfieldText,
                                              ),
                                            ),
                                            value: SortOptions.patientStories,
                                            groupValue: _selectedOption,
                                            onChanged: (SortOptions? value) {
                                              setState(() {
                                                _selectedOption = value;
                                              });
                                            },
                                          ),),
                                      ),
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child: Container(
                                          width: 360,
                                          height: 49,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color: AppColors
                                                      .bottomTextfield,
                                                  width: 1),
                                              color: AppColors.secondary),
                                          child:  RadioListTile<SortOptions>(
                                            activeColor: AppColors.primary,
                                            controlAffinity: ListTileControlAffinity.trailing,
                                            title: Text(
                                              context.getLocalization()?.sortByTextField2??'',
                                              style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.bottomTextfieldText,
                                              ),
                                            ),
                                            value: SortOptions.patientStories,
                                            groupValue: _selectedOption,
                                            onChanged: (SortOptions? value) {
                                              setState(() {
                                                _selectedOption = value;
                                              });
                                            },
                                          ),),
                                      ),
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child: Container(
                                          width: 360,
                                          height: 49,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color: AppColors
                                                      .bottomTextfield,
                                                  width: 1),
                                              color: AppColors.secondary),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 15),
                                            child: RadioListTile<SortOptions>(
                                              activeColor: AppColors.primary,
                                              controlAffinity: ListTileControlAffinity.trailing,
                                              title: Text(
                                                context.getLocalization()?.sortByTextField3??'',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.bottomTextfieldText,
                                                ),
                                              ),
                                              value: SortOptions.patientStories,
                                              groupValue: _selectedOption,
                                              onChanged: (SortOptions? value) {
                                                setState(() {
                                                  _selectedOption = value;
                                                });
                                              },
                                            ),
                                          ),),
                                      ),
                                      const SizedBox(
                                        height: 94,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 16),
                                        child: SizedBox(
                                          width: 361,
                                          height: 52,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              AppColors.primary,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              context.getLocalization()?.applyButton??'',
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 10),
                              child: Text(
                                context.getLocalization()?.sortBy??'',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.signText1.withOpacity(0.70),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 10),
                              child: Image.asset("assets/chevron-down.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const FilterWidget();
                          },
                        );
                      },
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 11),
                              child: Text(
                                context.getLocalization()?.filter??'',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.signText1.withOpacity(0.70),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 11),
                              child: Icon(Icons.tune),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            _selectedReview,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.70),
                            ),
                          ),
                          PopupMenuButton<String>(
                            onSelected: (value) {
                              setState(() {
                                _selectedReview = value;
                              });
                            },
                            icon: Image.asset("assets/chevron-down.png"),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: "5 / 4 star",
                                child: Text( context.getLocalization()?.review1??'',),
                              ),
                              PopupMenuItem(
                                value: "3 / 2 star",
                                child: Text(context.getLocalization()?.review2??''),
                              ),
                              PopupMenuItem(
                                value: "1 star",
                                child: Text(context.getLocalization()?.review3??''),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 43,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11, top: 10),
                            child: Text(
                              context.getLocalization()?.insurance??'',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.signText1.withOpacity(0.70),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...[
                      for (int i = 0; i < 4; i++)
                        GestureDetector(
                          onTap:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HospitalDetails()),
                            );
                          },
                          child: SizedBox(
                            height: 300,
                            width: 358,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              elevation: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, 
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    child: Image.network(
                                      'https://thumbs.dreamstime.com/b/doctors-hospital-corridor-nurse-pushing-gurney-stretcher-bed-male-senior-female-patient-32154012.jpg',
                                      height: 121,
                                      width: 358 ,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(width: 10,),
                                      Text(
                                        'Saskatoon City Hospital',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.hospitalText,
                                        ),
                                      ),
                                      const SizedBox(width: 35,),
                                      Padding(
                                        padding: const EdgeInsets.only(left:50),
                                        child: IconButton(
                                          onPressed: () {
                                          },
                                          icon: const Icon(
                                            Icons.favorite_border,
                                            color: AppColors.primary,
                                          ),
                                          // iconSize: 35,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        // Image.asset('assets/map-pin.png'),
                                        const Icon(Icons.location_on, size: 18),
                                        const SizedBox(width: 4),
                                        Text(
                                          '701 Queen St, Saskatoon',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.hospitalLocationText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          '4.9',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.hospitalLocationText,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        RatingBar.builder(
                                          direction: Axis.horizontal,
                                          //minRating: 1,
                                          allowHalfRating: true,
                                          itemCount:5,
                                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                          itemBuilder: (context, _) =>  const Icon(
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
                                          glowColor: AppColors.searchScreenRating,
                                          ignoreGestures: false,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          '(58 Reviews) ',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.hospitalLocationText,
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Container(
                                              height: 22,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(7)),
                                                border: Border.all(
                                                  width: 0.5,
                                                  color: AppColors.container,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '35%',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        color: AppColors.container,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5,),
                                                    Image.asset('assets/trendingup.png')
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 4,),
                                            Text(
                                              'Estimated Wait Time : 00:30 hrs',
                                              style: GoogleFonts.poppins(
                                                fontSize: 7,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.container,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: AppColors.notificationText,
                                    thickness: 1,
                                    height: 10,
                                  ),
                                  const SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children:  [
                                        Image.asset('assets/routing.png',height: 22,width: 22,
                                          fit: BoxFit.fill,),
                                        const SizedBox(width: 4),
                                        Text(
                                          '2.5 km/40min',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.hospitalLocationText,
                                          ),
                                        ),
                                        const SizedBox(width: 120),
                                        Image.asset('assets/Hospital.png',height: 29,width: 30,
                                          fit: BoxFit.fill,),
                                        const SizedBox(width: 4),
                                        Text(
                                          'Hospital',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.hospitalLocationText,
                                          ),
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
          ],
        ),
      ),
    );
  }
}