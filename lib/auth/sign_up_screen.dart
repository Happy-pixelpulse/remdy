import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common_widgets/sign_up_button.dart';
import '../utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      UserCredential result = await auth.signInWithCredential(authCredential);
      User? user = result.user;
      if (kDebugMode) {
        print(user);
      }
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('accessToken', googleSignInAuthentication.accessToken!);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
  }

  Future<void> fetchUser() async {
    const url = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
    final uri = Uri.parse(url);
    final response = await http.post(uri);
    final body = response.body;
    if (kDebugMode) {
      print(body);
    }
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('accessToken');
    if (accessToken == null) {
      if (kDebugMode) {
        print('Access token not found. Please sign in first.');
      }
      return;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/Vector.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned.fill(
                child: Align(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: Lottie.network(
                        'https://lottie.host/6f3513d8-bd36-4976-8883-a5489e3b94b2/aKSSveQtS8.json'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            context.getLocalization()?.signUpScreenTitle ?? '',
            style: GoogleFonts.poppins(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            height: 114,
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: SignUpButton(
          //     onPressed: () {
          //       fetchUser();
          //       signInWithGoogle(context);
          //     },
          //     imageName: 'assets/google.png',
          //     buttonName: context.getLocalization()?.buttonName1 ?? '',
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignUpButton(
                onPressed: () {
                  fetchUser();
                  signInWithGoogle(context);
                },
                imageName: 'assets/google.png',
                buttonName: context.getLocalization()?.buttonName1 ?? '',
              ),
              const SizedBox(height: 8),
              SignUpButton(
                onPressed: () {},
                imageName: 'assets/apple.png',
                buttonName: context.getLocalization()?.buttonName2 ?? '',
              ),
              const SizedBox(height: 12),
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
