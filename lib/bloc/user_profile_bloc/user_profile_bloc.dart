import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remdy/bloc/user_profile_bloc/user_profile_event.dart';
import 'package:remdy/bloc/user_profile_bloc/user_profile_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/app_const.dart';
import 'package:http/http.dart' as http;
import 'model/use_profile_response_model.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(UserProfileInitial()) {
    on<UserProfileEvent>((event, emit) async {
      final uri = Uri.parse(AppConst.userProFile);
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      emit(UserProfileLoaded());
      final response = await http.get(
        uri,
        headers: {
        'Authorization': 'Bearer $token',
        'CacheControl': '',
        'PostmanToken': ''
      });
      // final response = await http.post(
      //   uri,
      //   headers: {
      //     'Authorization': 'Bearer $token',
      //     'CacheControl':'',
      //     'PostmanToken':''
      //   },
      //   body: UseProfileRequest(userId: '1',).toJson(),
      // );
      debugPrint('user profile=====>>>> ${response}');
      if (response.statusCode == 200 || response.statusCode == 201){
        UseProfileResponse useProfileResponse=UseProfileResponse.fromJson(jsonDecode(response.body));
        debugPrint('user profile=====>>>> ${response.body}');
        emit(UserProfileResponseState(useProfileResponse:useProfileResponse ));
      } else {
        emit(UserProfileErrorState(error: 'Something went wrong in user ProFile...'));
      }
    });
  }
}
