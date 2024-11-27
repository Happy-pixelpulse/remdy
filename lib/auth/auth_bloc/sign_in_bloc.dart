
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'model/sign_in_request.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<GoogleSignInEvent>((event, emit)  async{
      const url = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
      final uri = Uri.parse(url);
      final response = await http.post(uri,body: event.signInRequest.toJson());
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
    });
  }

}
