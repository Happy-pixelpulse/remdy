import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/home_screen.dart';
import '../common_widgets/sign_up_button.dart';
import '../utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
// String imei = "number";
// @override
// void initState(){
//   super.initState();
//   lodeInfo();
// }
//   void lodeInfo() async{
//     DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
//     if(Platform.isAndroid){
//       BaseDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
//       print("${androidDeviceInfo.data}");
//       setState(() {
//         androidDeviceInfo;
//       });
//     }else {
//       null;
//     }
//   }
  final FirebaseAuth auth = FirebaseAuth.instance;
  String getUserEmail()=>auth.currentUser?.email ?? "User";

  Future<User?> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      final AuthCredential googleCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      UserCredential userCredential = await auth.signInWithCredential(googleCredential);
      return userCredential.user;
      // if(userCredential == null){
      //   return const SplashScreen();
      // }else{
      //   return const HomeScreen();
      // }
    } catch (e) {
      if (kDebugMode) {
        print("Error during Google sign-in: $e");
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error during sign-in: $e")),
      );
    }
    return null;
  }

  // signInWithGoogle() async {
  //   final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
  //   final GoogleSignInAuthentication gAuth = await gUser!.authentication;
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: gAuth.accessToken,
  //     idToken:  gAuth.idToken
  //   );
  //   return await auth.signInWithCredential(credential);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/Vector.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
             children: [
            //   Text(
            //     imei,
            //     style: GoogleFonts.poppins(
            //       fontSize: 35,
            //       fontWeight: FontWeight.w600,
            //       color: AppColors.primary,
            //     ),
            //   ),
              Text(
                context.getLocalization()?.signUpScreenTitle ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 100),
              SignUpButton(
                  onPressed: () {
                     //signInWithGoogle(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  const HomeScreen()),
                    );
                  },
                  imageName: 'assets/google.png',
                  buttonName:context.getLocalization()?.buttonName1 ?? '',),
              const SizedBox(height: 8),
              SignUpButton(
                  onPressed: () {},
                  imageName: 'assets/apple.png',
                  buttonName: context.getLocalization()?.buttonName2 ?? '',),
              const SizedBox(height: 8),
              Text(
                context.getLocalization()?.signUpScreenText ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.signText1,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(6),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: context.getLocalization()?.signUpTextSpan1 ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.signText1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: context.getLocalization()?.signUpTextSpan2 ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: context.getLocalization()?.signUpTextSpan3 ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.signText1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: context.getLocalization()?.signUpTextSpan4 ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
