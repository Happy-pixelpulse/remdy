import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  List<String> options = <String>['Male','Female','Other'];
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16,right: 17),
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text("Profile updated")),
            // );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(360, 60),
            backgroundColor: AppColors.primary,
          ),
          child:  Text(
            'UPDATE',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/profileBackgroung.png',
          fit: BoxFit.fill,
        )),
        toolbarHeight: 218,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: AppColors.secondary,
              ),
              const SizedBox(
                width: 80,
              ),
              Text(
                'Profile',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondary,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 120),
              child: Stack(
                  children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profilpic.png'),
                ),
                    Padding(
                      padding: EdgeInsets.only(top: 80,left: 80),
                      child: Icon(Icons.add,color: AppColors.signText1,size: 35,),
                    )
              ]),
            ),
             const SizedBox(height: 19,),
            Container(
                width: 360,
                height: 49,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon:
                        const Icon(Icons.cancel_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Name",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
            const SizedBox(height: 11,),
            Container(
                width: 360,
                height: 49,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                    suffixText: "Change",
                      suffixStyle:  TextStyle(
                          color: AppColors.waring),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Mobile",
                      labelStyle: TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
            const SizedBox(height: 11,),
            Container(
                width: 360,
                height: 49,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 17, right: 17),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixText: "Change",
                      suffixStyle:  TextStyle(
                          color: AppColors.waring),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
            const SizedBox(height: 11,),
            Container(
                width: 360,
                height: 49,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color:
                    AppColors.tp),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17),
                  child:
                  // DropdownButton<String>(
                  //   value: dropdownValue,
                  //   onChanged: (String? value) {
                  //     setState(() {
                  //       dropdownValue = value!;
                  //     });
                  //   },
                  //   underline: const SizedBox(),
                  //   isExpanded: true,
                  //   style: const TextStyle(color: Colors.black),
                  //   dropdownColor: Colors.white,
                  //   selectedItemBuilder: (BuildContext context) {
                  //     return options.map((String value) {
                  //       return Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: Text(
                  //           dropdownValue,
                  //         ),
                  //       );
                  //     }).toList();
                  //   },
                  //   items: options.map<DropdownMenuItem<String>>((String value) {
                  //     return DropdownMenuItem<String>(
                  //       value: value,
                  //       child: Text(value),
                  //     );
                  //   }).toList(),
                  // ),
                  TextField(
                    // readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          underline: const SizedBox(),
                          isExpanded: true,
                          style: const TextStyle(color: Colors.black),
                          dropdownColor: Colors.white,
                          selectedItemBuilder: (BuildContext context) {
                            return options.map((String value) {
                              return Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  dropdownValue,
                                ),
                              );
                            }).toList();
                          },
                          items: options.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      // IconButton(
                      //   icon:
                      //   const Icon(Icons.keyboard_arrow_down),
                      //   onPressed: () {
                      //     DropdownButton<String>(
                      //       value: dropdownValue,
                      //       onChanged: (String? value) {
                      //         setState(() {
                      //           dropdownValue = value!;
                      //         });
                      //       },
                      //       underline: const SizedBox(),
                      //       isExpanded: true,
                      //       style: const TextStyle(color: Colors.black),
                      //       dropdownColor: Colors.white,
                      //       icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                      //       selectedItemBuilder: (BuildContext context) {
                      //         return options.map((String value) {
                      //           return Align(
                      //             alignment: Alignment.centerLeft,
                      //             child: Text(
                      //               dropdownValue,
                      //             ),
                      //           );
                      //         }).toList();
                      //       },
                      //       items: options.map<DropdownMenuItem<String>>((String value) {
                      //         return DropdownMenuItem<String>(
                      //           value: value,
                      //           child: Text(value),
                      //         );
                      //       }).toList(),
                      //     );
                      //   },
                      // ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      labelText: "Gender",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                    obscureText: true,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
