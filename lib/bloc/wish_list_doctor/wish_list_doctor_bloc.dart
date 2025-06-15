import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;
import 'package:remdy/bloc/wish_list_doctor/model/wish_list_doctor_request.dart';
import 'package:remdy/bloc/wish_list_doctor/model/wish_list_doctor_response.dart';
import 'package:remdy/bloc/wish_list_doctor/wish_list_doctor_event.dart';
import 'package:remdy/bloc/wish_list_doctor/wish_list_doctor_state.dart';

import 'package:remdy/utils/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WishListDoctorBloc extends Bloc<WishListDoctor, WishListDoctorState> {
  WishListDoctorBloc() : super(DoctorByPostalCodeInitial()) {
    on<WishListDoctor>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      final uri = Uri.parse(AppConst.wishListDoctor);
      emit(WishListDoctorLoaded());
      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'CacheControl': '',
          'PostmanToken': ''
        },
        body: WishListDoctorRequest(userId: 05, doctorId: 29, type: "add")
            .toJson(),
      );
      debugPrint('===>> ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        WishListDoctorResponse wishListDoctorResponse =
            WishListDoctorResponse.fromJson(jsonDecode(response.body));
        debugPrint(response.body);
        emit(WishListDoctorResponseState(
            wishListDoctorResponse: wishListDoctorResponse));
      } else {
        emit(WishListDoctorErrorState(
            error:
                'Something went wrong to the  get the Wish List Doctor API'));
      }
    });
  }
}
