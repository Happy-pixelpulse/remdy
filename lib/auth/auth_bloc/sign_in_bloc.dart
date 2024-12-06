import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:remdy/auth/auth_bloc/model/sign_in_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/sign_in_request.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<GoogleSignInEvent>((event, emit) async {
      const url = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
      final uri = Uri.parse(url);
      debugPrint(
          "token==================>>>>>>>>>>>>>  ${event.signInRequest.googleToken}");
      emit(SignInProgressState());
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final prefs = await SharedPreferences.getInstance();
      UserCredential? _userCredential;
      Location location = Location();
      final FirebaseAuth auth = FirebaseAuth.instance;
      bool reAuthenticate = (prefs.getString('idToken') != null &&
              (prefs.getString('idToken') ?? '').isNotEmpty)
          ? false
          : true;
      GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signInSilently(reAuthenticate: reAuthenticate);
      googleSignInAccount ??= await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication?.idToken,
        accessToken: googleSignInAuthentication?.accessToken,
      );
      _userCredential = await auth.signInWithCredential(authCredential);
      LocationData _locationData;
      _locationData = await location.getLocation();
      debugPrint(
          "token ======= >>>>>>>>>>>> ${_locationData.longitude.toString()} ${_locationData.latitude.toString()} ");
      await prefs.setString(
          'idToken', googleSignInAuthentication?.idToken ?? '');
      await prefs.setString('Uid', _userCredential.user?.uid ?? '');
      final response = await http.post(
        uri,
        body: SignInRequest(
                googleToken: googleSignInAuthentication?.idToken ?? '',
                imeiNumber: '12334444',
                latitude: _locationData.latitude.toString(),
                longitude: _locationData.longitude.toString())
            .toJson(),
      );
      emit(SignInRequestState());
      if (response.statusCode == 200 || response.statusCode == 201) {
        SignInResponse signInResponse =
            SignInResponse.fromJson(jsonDecode(response.body));
        emit(GoogleSignInResponseState(signInResponse: signInResponse));
      } else {
        emit(GoogleSignInErrorState(error: 'Something went wrong'));
      }
    });
  }
}
