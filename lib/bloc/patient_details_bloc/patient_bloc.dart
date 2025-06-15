import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;

import 'package:remdy/bloc/patient_details_bloc/patient_model_class/patient_request.dart';
import 'package:remdy/bloc/patient_details_bloc/patient_model_class/patient_response.dart';
import 'package:remdy/bloc/patient_details_bloc/patient_state.dart';

import 'package:remdy/utils/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../doctor_by_postal_code/doctor_by_postal_code_event.dart';

class PatientsListBloc extends Bloc<DoctorByPostalCode, PatientState> {
  PatientsListBloc() : super(PatientsListInitial()) {
    on<DoctorByPostalCode>((event, emit) async {
      // Position position = await Geolocator.getCurrentPosition();
      // List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      // const url = 'http://184.169.211.131:3000/api/v1/hospitals/get-all-near-by-hospitals';
      final uri = Uri.parse(AppConst.patientsList);
      emit(NearByHospitalLoaded());
      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'CacheControl': '',
          'PostmanToken': ''
        },
        body: PatientRequest(
                fullName: "Karan",
                patientEmail: "K.de@example.com",
                phoneNumber: "1234567820",
                address: "1234 Elm Street, Springfield, IL",
                pinCode: "123654",
                dob: "1990-01-01",
                hadFamilyDoctor: "Yes",
                doctorName: "Dr. Smith",
                doctorId: "29",
                cityId: 3,
                provinceId: 9,
                genderId: 2)
            .toJson(),
      );
      debugPrint('Near by Hospital===>> ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        PatientResponse patientResponse =
            PatientResponse.fromJson(jsonDecode(response.body));
        debugPrint(response.body);
        emit(PatientsResponseState(patientResponse: patientResponse));
      } else {
        emit(PatientsListErrorState(
            error: 'Something went wrong to the patients List'));
      }
    });
  }
}
