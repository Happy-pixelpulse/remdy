import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:remdy/auth/auth_bloc/model/sign_in_response.dart';
import 'package:remdy/utils/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import 'model/sign_in_request.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    Future<void> _onCheckLocationServices(
        CheckLocationServices event, Emitter<SignInState> emit) async {
      final isLocationServiceEnabled =
          await Geolocator.isLocationServiceEnabled();

      if (isLocationServiceEnabled) {
        emit(LocationServicesOn());
      } else {
        emit(LocationServicesOff());
      }
    }

    on<CheckLocationServices>(_onCheckLocationServices);
    on<GoogleSignInEvent>((event, emit) async {
      var url = AppConst.googleSignIn;
      final uri = Uri.parse(url);
      // debugPrint(
      //     "token==================>>>>>>>>>>>>>  ${event.signInRequest.googleToken}");
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final prefs = await SharedPreferences.getInstance();
      UserCredential? userCredential;
      // bool serviceEnabled;
      // LocationPermission permission;
      // serviceEnabled = await Geolocator.isLocationServiceEnabled();
      // if (!serviceEnabled) {
      //   return Future.error('Location services are disabled.');
      // }
      // permission = await Geolocator.checkPermission();
      // if (permission == LocationPermission.always ||
      //     permission == LocationPermission.whileInUse) {
      //
      //   permission = await Geolocator.requestPermission();
      //   if (permission == LocationPermission.denied) {
      //     return Future.error('Location permissions are denied');
      //   }
      // }
      // if (permission == LocationPermission.deniedForever) {
      //   return Future.error(
      //       'Location permissions are permanently denied, we cannot request permissions.');
      // }
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.unableToDetermine) {
        permission = await Geolocator.requestPermission();

        if (permission == LocationPermission.denied) {
          return Future.error('User denied location permissions.');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied. Please enable them in the app settings.');
      }
      Position position = await Geolocator.getCurrentPosition();
      double latitude = position.latitude;
      double longitude = position.longitude;
      final FirebaseAuth auth = FirebaseAuth.instance;
      bool reAuthenticate = (prefs.getString('idToken') != null && (prefs.getString('idToken') ?? '').isNotEmpty) ? false : true;
      GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signInSilently(reAuthenticate: reAuthenticate);
      googleSignInAccount ??= await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication?.idToken,
        accessToken: googleSignInAuthentication?.accessToken,
      );
      userCredential = await auth.signInWithCredential(authCredential);
      debugPrint(
          "token ======= >>>>>>>>>>>> ${googleSignInAuthentication?.idToken} ");

      final response = await http.post(
        uri,
        body: SignInRequest(
                googleToken: googleSignInAuthentication?.idToken ?? '',
                imeiNumber: '12334444',
                latitude: latitude.toString(),
                longitude: longitude.toString())
            .toJson(),
      );
      emit(SignInRequestState());
      if (response.statusCode == 200 || response.statusCode == 201) {
        SignInResponse signInResponse =
            SignInResponse.fromJson(jsonDecode(response.body));
        await prefs.setString(
            'idToken', signInResponse.token ?? '');
        await prefs.setString('Uid', userCredential.user?.uid ?? '');
        emit(GoogleSignInResponseState(signInResponse: signInResponse));
      } else {
        emit(GoogleSignInErrorState(error: 'Something went wrong'));
      }
    });
  }
}
// import 'dart:convert';
// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:bloc/bloc.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;
// import 'package:remdy/auth/auth_bloc/model/sign_in_response.dart';
// import 'package:remdy/utils/app_const.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'model/sign_in_request.dart';
// part 'sign_in_event.dart';
// part 'sign_in_state.dart';
//
// class SignInBloc extends Bloc<SignInEvent, SignInState> {
//   SignInBloc() : super(SignInInitial()) {
//     Future<void> _onCheckLocationServices(
//         CheckLocationServices event, Emitter<SignInState> emit) async {
//       final isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (isLocationServiceEnabled) {
//         emit(LocationServicesOn());
//       } else {
//         emit(LocationServicesOff());
//       }
//     }
//
//     on<CheckLocationServices>(_onCheckLocationServices);
//     on<RequestLocationPermission>((event, emit) async {
//       LocationPermission permission = await Geolocator.checkPermission();
//
//       if (permission == LocationPermission.denied) {
//         permission = await Geolocator.requestPermission();
//         if (permission == LocationPermission.denied) {
//           emit(LocationPermissionDenied());
//           return;
//         }
//       }
//
//       if (permission == LocationPermission.deniedForever) {
//         emit(LocationPermissionPermanentlyDenied());
//         return;
//       }
//
//       emit(LocationPermissionGranted());
//     });
//
//     on<GoogleSignInEvent>((event, emit) async {
//       final uri = Uri.parse(AppConst.googleSignIn);
//       final GoogleSignIn googleSignIn = GoogleSignIn();
//       final prefs = await SharedPreferences.getInstance();
//       UserCredential? userCredential;
//
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) {
//         emit(LocationServicesOff());
//         return;
//       }
//
//       LocationPermission permission = await Geolocator.checkPermission();
//       if (permission == LocationPermission.denied) {
//         emit(LocationPermissionDenied());
//         return;
//       }
//       if (permission == LocationPermission.deniedForever) {
//         emit(LocationPermissionPermanentlyDenied());
//         return;
//       }
//
//       Position position = await Geolocator.getCurrentPosition();
//       double latitude = position.latitude;
//       double longitude = position.longitude;
//       final FirebaseAuth auth = FirebaseAuth.instance;
//       bool reAuthenticate = (prefs.getString('idToken') != null && (prefs.getString('idToken') ?? '').isNotEmpty) ? false : true;
//
//       GoogleSignInAccount? googleSignInAccount = await googleSignIn.signInSilently(reAuthenticate: reAuthenticate);
//       googleSignInAccount ??= await googleSignIn.signIn();
//       final GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;
//
//       final AuthCredential authCredential = GoogleAuthProvider.credential(
//         idToken: googleSignInAuthentication?.idToken,
//         accessToken: googleSignInAuthentication?.accessToken,
//       );
//
//       userCredential = await auth.signInWithCredential(authCredential);
//       await prefs.setString('idToken', googleSignInAuthentication?.idToken ?? '');
//       await prefs.setString('Uid', userCredential.user?.uid ?? '');
//
//       final response = await http.post(
//         uri,
//         body: SignInRequest(
//           googleToken: googleSignInAuthentication?.idToken ?? '',
//           imeiNumber: '12334444',
//           latitude: latitude.toString(),
//           longitude: longitude.toString(),
//         ).toJson(),
//       );
//
//       emit(SignInRequestState());
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         SignInResponse signInResponse = SignInResponse.fromJson(jsonDecode(response.body));
//         emit(GoogleSignInResponseState(signInResponse: signInResponse));
//       } else {
//         emit(GoogleSignInErrorState(error: 'Something went wrong'));
//       }
//
//       bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
//       if (!isAllowed) {
//         await AwesomeNotifications().requestPermissionToSendNotifications();
//       }
//
//       await AwesomeNotifications().createNotification(
//         content: NotificationContent(
//           id: 1,
//           channelKey: 'location_channel',
//           title: 'Enable Location Services',
//           body: 'Please enable location services to use this app properly.',
//           notificationLayout: NotificationLayout.Default,
//         ),
//         actionButtons: [
//           NotificationActionButton(
//             key: 'ENABLE_LOCATION',
//             label: 'Enable Location',
//             actionType: ActionType.Default,
//           ),
//         ],
//       );
//     });
//   }
// }
// // /// 28-03-2025 the change  befor of the open the dilog ask the user location
// // import 'dart:convert';
// // import 'package:awesome_notifications/awesome_notifications.dart';
// // import 'package:bloc/bloc.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:geolocator/geolocator.dart';
// // import 'package:google_sign_in/google_sign_in.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:remdy/auth/auth_bloc/model/sign_in_response.dart';
// // import 'package:remdy/utils/app_const.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'model/sign_in_request.dart';
// // part 'sign_in_event.dart';
// // part 'sign_in_state.dart';
// //
// //
// // class SignInBloc extends Bloc<SignInEvent, SignInState> {
// //   SignInBloc() : super(SignInInitial()) {
// //     Future<void> _onCheckLocationServices(
// //         CheckLocationServices event, Emitter<SignInState> emit) async {
// //       final isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
// //       if (isLocationServiceEnabled) {
// //         emit(LocationServicesOn());
// //       } else {
// //         emit(LocationServicesOff());
// //       }
// //     }
// //     on<CheckLocationServices>(_onCheckLocationServices);
// //     on<GoogleSignInEvent>((event, emit) async {
// //       // const url = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
// //       final uri = Uri.parse(AppConst.googleSignIn);
// //       // debugPrint(
// //       //     "token==================>>>>>>>>>>>>>  ${event.signInRequest.googleToken}");
// //       final GoogleSignIn googleSignIn = GoogleSignIn();
// //       final prefs = await SharedPreferences.getInstance();
// //       UserCredential? userCredential;
// //       bool serviceEnabled;
// //       LocationPermission permission;
// //       serviceEnabled = await Geolocator.isLocationServiceEnabled();
// //       if (!serviceEnabled) {
// //         return Future.error('Location services are disabled.');
// //       }
// //       permission = await Geolocator.checkPermission();
// //       if (permission == LocationPermission.always ||
// //           permission == LocationPermission.whileInUse) {
// //         permission = await Geolocator.requestPermission();
// //         if (permission == LocationPermission.denied) {
// //           return Future.error('Location permissions are denied');
// //         }
// //       }
// //       if (permission == LocationPermission.deniedForever) {
// //         return Future.error(
// //             'Location permissions are permanently denied, we cannot request permissions.');
// //       }
// //       Position position = await Geolocator.getCurrentPosition();
// //       double latitude = position.latitude;
// //       double longitude = position.longitude;
// //       final FirebaseAuth auth = FirebaseAuth.instance;
// //       bool reAuthenticate = (prefs.getString('idToken') != null &&
// //           (prefs.getString('idToken') ?? '').isNotEmpty)
// //           ? false
// //           : true;
// //       GoogleSignInAccount? googleSignInAccount =
// //       await googleSignIn.signInSilently(reAuthenticate: reAuthenticate);
// //       googleSignInAccount ??= await googleSignIn.signIn();
// //       final GoogleSignInAuthentication? googleSignInAuthentication =
// //       await googleSignInAccount?.authentication;
// //       final AuthCredential authCredential = GoogleAuthProvider.credential(
// //         idToken: googleSignInAuthentication?.idToken,
// //         accessToken: googleSignInAuthentication?.accessToken,
// //       );
// //       userCredential = await auth.signInWithCredential(authCredential);
// //       debugPrint(
// //           "token ======= >>>>>>>>>>>> ${longitude.toString()} ${latitude
// //               .toString()} ");
// //       await prefs.setString(
// //           'idToken', googleSignInAuthentication?.idToken ?? '');
// //       await prefs.setString('Uid', userCredential.user?.uid ?? '');
// //       final response = await http.post(
// //         uri,
// //         body: SignInRequest(
// //             googleToken: googleSignInAuthentication?.idToken ?? '',
// //             imeiNumber: '12334444',
// //             latitude: latitude.toString(),
// //             longitude: longitude.toString())
// //             .toJson(),
// //       );
// //       emit(SignInRequestState());
// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         SignInResponse signInResponse =
// //         SignInResponse.fromJson(jsonDecode(response.body));
// //         emit(GoogleSignInResponseState(signInResponse: signInResponse));
// //       } else {
// //         emit(GoogleSignInErrorState(error: 'Something went wrong'));
// //       }
// //       bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
// //       if (!isAllowed) {
// //         await AwesomeNotifications().requestPermissionToSendNotifications();
// //       }
// //
// //       await AwesomeNotifications().createNotification(
// //         content: NotificationContent(
// //           id: 1,
// //           channelKey: 'location_channel',
// //           title: 'Enable Location Services',
// //           body: 'Please enable location services to use this app properly.',
// //           notificationLayout: NotificationLayout.Default,
// //         ),
// //         actionButtons: [
// //           NotificationActionButton(
// //             key: 'ENABLE_LOCATION',
// //             label: 'Enable Location',
// //             actionType: ActionType.Default,
// //           ),
// //         ],
// //       );
// //     });
// //   }
// // }
// // /// 28-03-2025 the change  befor of the open the dilog ask the user location
// // //
// // // class SignInBloc extends Bloc<SignInEvent, SignInState> {
// // //   SignInBloc() : super(SignInInitial()) {
// // //     Future<void> _onCheckLocationServices(
// // //         CheckLocationServices event, Emitter<SignInState> emit) async {
// // //       final isLocationServiceEnabled =
// // //       await Geolocator.isLocationServiceEnabled();
// // //
// // //       if (isLocationServiceEnabled) {
// // //         emit(LocationServicesOn());
// // //       } else {
// // //         emit(LocationServicesOff());
// // //       }
// // //     }
// // //     on<CheckLocationServices>(_onCheckLocationServices);
// // //     on<GoogleSignInEvent>((event, emit) async {
// // //       const url = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
// // //       final uri = Uri.parse(url);
// // //       // debugPrint(
// // //       //     "token==================>>>>>>>>>>>>>  ${event.signInRequest.googleToken}");
// // //       final GoogleSignIn googleSignIn = GoogleSignIn();
// // //       final prefs = await SharedPreferences.getInstance();
// // //       UserCredential? userCredential;
// // //       bool serviceEnabled;
// // //       LocationPermission permission;
// // //       serviceEnabled = await Geolocator.isLocationServiceEnabled();
// // //       if (!serviceEnabled) {
// // //         return Future.error('Location services are disabled.');
// // //       }
// // //       permission = await Geolocator.checkPermission();
// // //       if (permission == LocationPermission.always ||
// // //           permission == LocationPermission.whileInUse) {
// // //         _showLocationRequestNotification();
// // //         permission = await Geolocator.requestPermission();
// // //         if (permission == LocationPermission.denied) {
// // //           return Future.error('Location permissions are denied');
// // //         }
// // //       }
// // //       if (permission == LocationPermission.deniedForever) {
// // //         return Future.error(
// // //             'Location permissions are permanently denied, we cannot request permissions.');
// // //       }
// // //       Position position = await Geolocator.getCurrentPosition();
// // //       double latitude = position.latitude;
// // //       double longitude = position.longitude;
// // //       final FirebaseAuth auth = FirebaseAuth.instance;
// // //       bool reAuthenticate = (prefs.getString('idToken') != null &&
// // //           (prefs.getString('idToken') ?? '').isNotEmpty)
// // //           ? false
// // //           : true;
// // //       GoogleSignInAccount? googleSignInAccount =
// // //       await googleSignIn.signInSilently(reAuthenticate: reAuthenticate);
// // //       googleSignInAccount ??= await googleSignIn.signIn();
// // //       final GoogleSignInAuthentication? googleSignInAuthentication =
// // //       await googleSignInAccount?.authentication;
// // //       final AuthCredential authCredential = GoogleAuthProvider.credential(
// // //         idToken: googleSignInAuthentication?.idToken,
// // //         accessToken: googleSignInAuthentication?.accessToken,
// // //       );
// // //       userCredential = await auth.signInWithCredential(authCredential);
// // //       debugPrint(
// // //           "token ======= >>>>>>>>>>>> ${longitude.toString()} ${latitude
// // //               .toString()} ");
// // //       await prefs.setString(
// // //           'idToken', googleSignInAuthentication?.idToken ?? '');
// // //       await prefs.setString('Uid', userCredential.user?.uid ?? '');
// // //       final response = await http.post(
// // //         uri,
// // //         body: SignInRequest(
// // //             googleToken: googleSignInAuthentication?.idToken ?? '',
// // //             imeiNumber: '12334444',
// // //             latitude: latitude.toString(),
// // //             longitude: longitude.toString())
// // //             .toJson(),
// // //       );
// // //       emit(SignInRequestState());
// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         SignInResponse signInResponse =
// // //         SignInResponse.fromJson(jsonDecode(response.body));
// // //         emit(GoogleSignInResponseState(signInResponse: signInResponse));
// // //       } else {
// // //         emit(GoogleSignInErrorState(error: 'Something went wrong'));
// // //       }
// // //     });
// // //   }
// // //
// // //   Future<void> _showLocationRequestNotification() async {
// // //     const AndroidNotificationDetails androidPlatformChannelSpecifics =
// // //     AndroidNotificationDetails(
// // //       'location_channel',
// // //       'Location Services',
// // //       importance: Importance.high,
// // //       priority: Priority.high,
// // //     );
// // //
// // //     const NotificationDetails platformChannelSpecifics = NotificationDetails(
// // //       android: androidPlatformChannelSpecifics,
// // //     );
// // //
// // //     await flutterLocalNotificationsPlugin.show(
// // //       0,
// // //       'Enable Location Services',
// // //       'Please enable location services to use this app properly.',
// // //       platformChannelSpecifics,
// // //     );
// // //   }
// // // }
// //
// //
// // class SignInBloc extends Bloc<SignInEvent, SignInState> {
// //   SignInBloc() : super(SignInInitial()) {
// //     on<CheckLocationServices>(_onCheckLocationServices);
// //     on<GoogleSignInEvent>(_onGoogleSignIn);
// //   }
// //
// //   Future<void> _onCheckLocationServices(
// //       CheckLocationServices event, Emitter<SignInState> emit) async {
// //     final isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
// //     if (isLocationServiceEnabled) {
// //       emit(LocationServicesOn());
// //     } else {
// //       emit(LocationServicesOff());
// //     }
// //   }
// //
// //   Future<void> _onGoogleSignIn(GoogleSignInEvent event, Emitter<SignInState> emit) async {
// //     const url = 'http://example.com/api/v1/auth/signInWithGoogle';
// //     final uri = Uri.parse(url);
// //
// //     final GoogleSignIn googleSignIn = GoogleSignIn();
// //     final prefs = await SharedPreferences.getInstance();
// //     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
// //
// //     if (!serviceEnabled) {
// //       await _showLocationRequestNotification();
// //       return Future.error('Location services are disabled.');
// //     }
// //
// //     LocationPermission permission = await Geolocator.checkPermission();
// //     if (permission == LocationPermission.denied) {
// //       permission = await Geolocator.requestPermission();
// //       if (permission == LocationPermission.denied) {
// //         return Future.error('Location permissions are denied.');
// //       }
// //     }
// //
// //     if (permission == LocationPermission.deniedForever) {
// //       return Future.error('Location permissions are permanently denied.');
// //     }
// //
// //     Position position = await Geolocator.getCurrentPosition();
// //     double latitude = position.latitude;
// //     double longitude = position.longitude;
// //
// //     GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
// //     final GoogleSignInAuthentication? googleSignInAuthentication =
// //     await googleSignInAccount?.authentication;
// //
// //     final AuthCredential authCredential = GoogleAuthProvider.credential(
// //       idToken: googleSignInAuthentication?.idToken,
// //       accessToken: googleSignInAuthentication?.accessToken,
// //     );
// //
// //     final FirebaseAuth auth = FirebaseAuth.instance;
// //     UserCredential userCredential = await auth.signInWithCredential(authCredential);
// //
// //     final response = await http.post(
// //       uri,
// //       body: SignInRequest(
// //         googleToken: googleSignInAuthentication?.idToken ?? '',
// //         imeiNumber: '12345678',
// //         latitude: latitude.toString(),
// //         longitude: longitude.toString(),
// //       ).toJson(),
// //     );
// //
// //     if (response.statusCode == 200 || response.statusCode == 201) {
// //       SignInResponse signInResponse = SignInResponse.fromJson(jsonDecode(response.body));
// //       emit(GoogleSignInResponseState(signInResponse: signInResponse));
// //     } else {
// //       emit(GoogleSignInErrorState(error: 'Something went wrong.'));
// //     }
// //   }
// //
// //   Future<void> _showLocationRequestNotification() async {
// //     bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
// //     if (!isAllowed) {
// //       await AwesomeNotifications().requestPermissionToSendNotifications();
// //     }
// //
// //     await AwesomeNotifications().createNotification(
// //       content: NotificationContent(
// //         id: 1,
// //         channelKey: 'location_channel',
// //         title: 'Enable Location Services',
// //         body: 'Please enable location services to use this app properly.',
// //         notificationLayout: NotificationLayout.Default,
// //       ),
// //       actionButtons: [
// //         NotificationActionButton(
// //           key: 'ENABLE_LOCATION',
// //           label: 'Enable Location',
// //           actionType: ActionType.Default,
// //         ),
// //       ],
// //     );
// //   }
// // }
