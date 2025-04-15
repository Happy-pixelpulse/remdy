import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remdy/bloc/user_profile_bloc/user_profile_event.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/widgets/image_picker_option.dart';
import 'package:remdy/screen/widgets/shimmer_effect.dart';

import '../bloc/user_profile_bloc/user_profile_bloc.dart';
import '../bloc/user_profile_bloc/user_profile_state.dart';
import '../utils/colors.dart';
import '../bloc/user_profile_bloc/model/use_profile_response_model.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> options = <String>['Male', 'Female', 'Other'];
  String dropdownValue = 'Male';
  File? _profileImage;

  void _showImagePickerDialog() async {
    final pickerOption = ImagePickerOption();

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Choose Image Source"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Gallery"),
                onTap: () async {
                  final image =
                      await pickerOption.pickImage(ImageSource.gallery);
                  if (image != null) {
                    setState(() {
                      _profileImage = image;
                    });
                  }
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Camera"),
                onTap: () async {
                  final image =
                      await pickerOption.pickImage(ImageSource.camera);
                  if (image != null) {
                    setState(() {
                      _profileImage = image;
                    });
                  }
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  late UserProfileBloc _userProfileBloc;
  late UseProfileResponse useProfileResponse;

  @override
  void initState() {
    _userProfileBloc = BlocProvider.of<UserProfileBloc>(context);
    _userProfileBloc.add(UserProFile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 17, bottom: 24),
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text("Profile updated")),
            // );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: AppColors.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'UPDATE',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColors.secondary,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.2,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/profileBackgroung.png',
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_outlined,
                              color: AppColors.tp,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Text(
                            context.getLocalization()?.profileText ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.tp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 5.9,
                    left: MediaQuery.of(context).size.width / 2.9,
                    child: Stack(children: [
                      Container(
                        height: 111,
                        width: 111,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: const [
                              BoxShadow(
                                  color: AppColors.profileRadius,
                                  blurRadius: 4,
                                  offset: Offset(0, 4))
                            ]),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: _profileImage != null
                              ? FileImage(_profileImage!)
                              : const AssetImage('assets/profilpic.png')
                                  as ImageProvider,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 82),
                        child: GestureDetector(
                          onTap: _showImagePickerDialog,
                          child: const Icon(
                            Icons.add,
                            color: AppColors.signText1,
                            size: 35,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
      Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 19,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 49,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.cancel_outlined),
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
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Name",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                  ),
                )),
            const SizedBox(
              height: 11,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 49,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 17, right: 17),
                  child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        suffixText: "Change",
                        suffixStyle:
                        TextStyle(color: AppColors.waring1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                        ),
                        labelText: "Mobile",
                        labelStyle: TextStyle(
                            color: AppColors.signUpTextButtonRadius),
                      )),
                )),
            const SizedBox(
              height: 11,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 49,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 17, right: 17),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixText: "Change",
                      suffixStyle:
                      TextStyle(color: AppColors.waring1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                  ),
                )),
            const SizedBox(
              height: 11,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 49,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  child: TextField(
                    // readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
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
                          selectedItemBuilder:
                              (BuildContext context) {
                            return options.map((String value) {
                              return Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  dropdownValue,
                                ),
                              );
                            }).toList();
                          },
                          items: options
                              .map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Gender",
                      labelStyle: const TextStyle(
                          color: AppColors.signUpTextButtonRadius),
                    ),
                  ),
                )),
          ],
        ),
      ),
            BlocBuilder<UserProfileBloc, UserProfileState>(
              builder: (context, state) {
                debugPrint("error====>>>>>${UserProfileResponseState}");
                if(state is UserProfileResponseState){
                  return Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 19,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 49,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17, right: 17),
                              child: TextField(
                                // controller: useProfileResponse?.data!.name.toString(),
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.cancel_outlined),
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
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  labelText: "Name",
                                  labelStyle: const TextStyle(
                                      color: AppColors.signUpTextButtonRadius),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: 11,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 49,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 17, right: 17),
                              child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    suffixText: "Change",
                                    suffixStyle:
                                    TextStyle(color: AppColors.waring1),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                    ),
                                    labelText: "Mobile",
                                    labelStyle: TextStyle(
                                        color: AppColors.signUpTextButtonRadius),
                                  )),
                            )),
                        const SizedBox(
                          height: 11,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 49,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 17, right: 17),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  suffixText: "Change",
                                  suffixStyle:
                                  TextStyle(color: AppColors.waring1),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      color: AppColors.signUpTextButtonRadius),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: 11,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 49,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17, right: 17),
                              child: TextField(
                                // readOnly: true,
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
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
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return options.map((String value) {
                                          return Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              dropdownValue,
                                            ),
                                          );
                                        }).toList();
                                      },
                                      items: options
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  labelText: "Gender",
                                  labelStyle: const TextStyle(
                                      color: AppColors.signUpTextButtonRadius),
                                ),
                              ),
                            )),
                      ],
                    ),
                  );
                }  else {
                  return ShimmerEffect(width: 80, height: 20);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
