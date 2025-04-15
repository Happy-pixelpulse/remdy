import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;

import 'package:remdy/utils/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'hospital_model/near_by_hospital_response_model.dart';
import 'hospital_model/near_byhospital_request_model.dart';
import 'hospital_screen_event.dart';
import 'hospital_screen_state.dart';

class NearByHospitalBloc
    extends Bloc<NearByHospital, HospitalScreenState> {
  NearByHospitalBloc() : super(HospitalScreenInitial()) {
    on<NearByHospital>((event, emit) async {
      // Position position = await Geolocator.getCurrentPosition();
      // List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      // const url = 'http://184.169.211.131:3000/api/v1/hospitals/get-all-near-by-hospitals';
      final uri = Uri.parse(AppConst.neareByHospital);
      emit(NearByHospitalLoaded());
      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'CacheControl':'',
          'PostmanToken':''
        },
        body: NearByHospitalRequestModel(
          // latitude:position.latitude.toString(),
          latitude:"28.86207049645749",
          // longitude:position.longitude.toString(),
          longitude:"77.0891318824598",
        ).toJson(),
      );
      debugPrint('Near by Hospital===>> ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201){
        NearByHospitalResponseModel nearByHospitalResponseModel = NearByHospitalResponseModel.fromJson(jsonDecode(response.body));
        debugPrint(response.body);
       emit(NearByHospitalResponseState(nearByHospitalResponseModel:nearByHospitalResponseModel));
      } else {
        emit(NearByHospitalErrorState(error: 'Something went wrong'));
      }
    });
  }
}
