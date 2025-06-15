import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;
import 'package:remdy/bloc/doctor_by_postal_code/model/doctor_by_postal_code_request.dart';
import 'package:remdy/bloc/doctor_by_postal_code/model/doctor_by_postal_code_response.dart';
import 'package:remdy/bloc/patient_details_bloc/patient_event.dart';

import 'package:remdy/utils/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'doctor_by_postal_code_state.dart';

class DoctorByPostalCodeBloc
    extends Bloc<PatientsList, DoctorByPostalCodeState> {
  DoctorByPostalCodeBloc() : super(DoctorByPostalCodeInitial()) {
    on<PatientsList>((event, emit) async {
      // Position position = await Geolocator.getCurrentPosition();
      // List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      final uri = Uri.parse(AppConst.doctorsByPostalCode);
      emit(DoctorByPostalCodeLoaded());
      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'CacheControl': '',
          'PostmanToken': ''
        },
        body: DoctorByPostalCodeRequest(
                area: "Some thing",
                building: "Some building",
                postalCode: "1234")
            .toJson(),
      );
      debugPrint('Near by Hospital===>> ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        DoctorByPostalCodeResponse doctorByPostalCodeResponse =
        DoctorByPostalCodeResponse .fromJson(jsonDecode(response.body));
        debugPrint(response.body);
        emit(DoctorByPostalCodeResponseState(doctorByPostalCodeResponse: doctorByPostalCodeResponse));
      } else {
        emit(DoctorByPostalCodeErrorState(
            error: 'Something went wrong to the Doctor by postal code API'));
      }
    });
  }
}
