import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:remdy/auth/auth_bloc/sign_in_bloc.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common_widgets/sign_up_button.dart';
import '../utils/colors.dart';
import 'auth_bloc/model/sign_in_request.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  UserCredential? _userCredential;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final prefs = await SharedPreferences.getInstance();
    bool reAuthenticate = (prefs.getString('idToken') != null &&
            (prefs.getString('idToken') ?? '').isNotEmpty)
        ? false
        : true;
     GoogleSignInAccount? googleSignInAccount = await googleSignIn
        .signInSilently(reAuthenticate: reAuthenticate);
    googleSignInAccount ??= await googleSignIn
          .signIn();
    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount?.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication?.idToken,
      accessToken: googleSignInAuthentication?.accessToken,
    );
    _userCredential = await auth.signInWithCredential(authCredential);
    debugPrint("token ======= >>>>>>>>>>>> ${googleSignInAuthentication?.idToken}");
    await prefs.setString('idToken', googleSignInAuthentication?.idToken ?? '');
    await prefs.setString('Uid', _userCredential?.user?.uid ?? '');
    _signInBloc.add(GoogleSignInEvent(
        signInRequest: SignInRequest(
            googleToken: googleSignInAuthentication?.idToken ?? '',
            imeiNumber: '12334444')));
  }

  late SignInBloc _signInBloc;

  @override
  void initState() {
    super.initState();
    _signInBloc = BlocProvider.of<SignInBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is GoogleSignInResponseState) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (state is GoogleSignInErrorState) {
            debugPrint(state.error);
          }
        },
        child: Column(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignUpButton(
                  onPressed: () async {
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                    await signInWithGoogle(context);
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
