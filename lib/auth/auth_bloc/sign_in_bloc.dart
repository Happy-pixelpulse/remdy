import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:remdy/auth/auth_bloc/model/sign_in_response.dart';

import 'model/sign_in_request.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<GoogleSignInEvent>((event, emit) async {
      const url = 'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle';
      final uri = Uri.parse(url);
      debugPrint("token==================>>>>>>>>>>>>>  ${event.signInRequest.googleToken}");
      final response = await http.post(uri,
          body: event.signInRequest.toJson(),
          );
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
