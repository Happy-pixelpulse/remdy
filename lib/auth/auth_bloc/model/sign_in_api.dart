import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:remdy/auth/auth_bloc/model/sign_in_request.dart';

class SignInApi {
  Future<List<SignInRequest>> fetchSignIn() async {
    try {
      final response = await http.post(Uri.parse(
          'http://184.169.211.131:3000/api/v1/auth/signInWithGoogle'));
      if (response.statusCode == 200) {
        final body = json.decode(response.body) as List;
        return body.map((e) {
          return SignInRequest(
            googleToken: e['googleToken'] as String,
            imeiNumber:e['imei_number'] as String,
          );
        }).toList();
      }
    } on SocketException {
      throw Exception('error while fetching data');
    }
    throw Exception('error while fetching data');
  }
}
