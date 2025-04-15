import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:remdy/auth/auth_bloc/sign_in_bloc.dart';
import 'package:remdy/common_widgets/progress_dialog_box.dart';
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
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseMessaging fcm = FirebaseMessaging.instance;

  void pushNotification() async {
    await fcm.requestPermission();
    final token = await fcm.getToken();
    debugPrint('token ====  >>>>$token');
  }

  late SignInBloc _signInBloc;

  @override
  void initState() {
    super.initState();
    pushNotification();
    _signInBloc = BlocProvider.of<SignInBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) async {
          if (state is SignInProgressState) {
            ProgressDialogBox.showLoaderDialog(context);
          } else if (state is GoogleSignInResponseState)  {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (state is GoogleSignInErrorState) {
            Navigator.pop(context);
            debugPrint('Error ======>>>>>>>${state.error}');
          } else if(state is LocationServicesOff){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('please enable Location'),
                backgroundColor: AppColors.waring,
                duration: Duration(seconds: 15),
              ),
            );
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
                      child: Lottie.asset('assets/welcome.json'),
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
                  onPressed: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => const HomeScreen()));
                    _signInBloc.add(GoogleSignInEvent());
                  },
                  imageName: 'assets/google.png',
                  buttonName: context.getLocalization()?.buttonName1 ?? '',
                ),
                const SizedBox(height: 8),
                SignUpButton(
                  onPressed: () {
                    // pushNotification();
                    ProgressDialogBox.showLoaderDialog(context);
                  },
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
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottie/lottie.dart';
// import 'package:remdy/auth/auth_bloc/sign_in_bloc.dart';
// import 'package:remdy/common_widgets/progress_dialog_box.dart';
// import 'package:remdy/extensions/localization_extension.dart';
// import 'package:remdy/screen/home_screen.dart';
//
// import '../common_widgets/sign_up_button.dart';
// import '../utils/colors.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final FirebaseMessaging fcm = FirebaseMessaging.instance;
//
//   void pushNotification() async {
//     await fcm.requestPermission();
//     final token = await fcm.getToken();
//     debugPrint('token ====  >>>>$token');
//   }
//
//   late SignInBloc _signInBloc;
//
//   @override
//   void initState() {
//     super.initState();
//     pushNotification();
//     _signInBloc = BlocProvider.of<SignInBloc>(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundColor,
//       body: BlocListener<SignInBloc, SignInState>(
//         listener: (context, state) async {
//           if (state is SignInProgressState) {
//             ProgressDialogBox.showLoaderDialog(context);
//           } else if (state is GoogleSignInResponseState)  {
//              Navigator.pushReplacement(context,
//                 MaterialPageRoute(builder: (context) => const HomeScreen()));
//           } else if (state is GoogleSignInErrorState) {
//             Navigator.pop(context);
//             debugPrint(state.error);
//           } else if(state is LocationServicesOff){
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                 content: Text('please enable Location'),
//                 backgroundColor: AppColors.waring,
//                 duration: Duration(seconds: 15),
//               ),
//             );
//           }
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Image.asset(
//                   'assets/Vector.png',
//                   fit: BoxFit.cover,
//                   width: MediaQuery.of(context).size.width,
//                 ),
//                 Positioned.fill(
//                   child: Align(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 38),
//                       child: Lottie.asset('assets/welcome.json'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             Text(
//               context.getLocalization()?.signUpScreenTitle ?? '',
//               style: GoogleFonts.poppins(
//                 fontSize: 35,
//                 fontWeight: FontWeight.w600,
//                 color: AppColors.primary,
//               ),
//             ),
//             const SizedBox(
//               height: 114,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SignUpButton(
//                   onPressed: () {
//                     // Navigator.pushReplacement(context,
//                     //     MaterialPageRoute(builder: (context) => const HomeScreen()));
//                     _signInBloc.add(GoogleSignInEvent());
//                   },
//                   imageName: 'assets/google.png',
//                   buttonName: context.getLocalization()?.buttonName1 ?? '',
//                 ),
//                 const SizedBox(height: 8),
//                 SignUpButton(
//                   onPressed: () {
//                     // pushNotification();
//                     ProgressDialogBox.showLoaderDialog(context);
//                   },
//                   imageName: 'assets/apple.png',
//                   buttonName: context.getLocalization()?.buttonName2 ?? '',
//                 ),
//                 const SizedBox(height: 12),
//                 Text(
//                   context.getLocalization()?.signUpScreenText ?? '',
//                   style: GoogleFonts.poppins(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.signText1,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(6),
//         child: RichText(
//           textAlign: TextAlign.center,
//           text: TextSpan(
//             children: [
//               TextSpan(
//                 text: context.getLocalization()?.signUpTextSpan1 ?? '',
//                 style: GoogleFonts.poppins(
//                   fontSize: 10,
//                   color: AppColors.signText1,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               TextSpan(
//                 text: context.getLocalization()?.signUpTextSpan2 ?? '',
//                 style: GoogleFonts.poppins(
//                   fontSize: 10,
//                   color: AppColors.primary,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               TextSpan(
//                 text: context.getLocalization()?.signUpTextSpan3 ?? '',
//                 style: GoogleFonts.poppins(
//                   fontSize: 10,
//                   color: AppColors.signText1,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               TextSpan(
//                 text: context.getLocalization()?.signUpTextSpan4 ?? '',
//                 style: GoogleFonts.poppins(
//                   fontSize: 10,
//                   color: AppColors.primary,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
