import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:remdy/bloc/home_screen_bloc/model/nearby_doctor/nearby_doctor_response.dart';
import 'package:remdy/utils/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen_event.dart';
import 'home_screen_state.dart';
import 'model/nearby_doctor/nearby_doctor_request.dart';
import 'model/patients_location/patient_location_request.dart';
import 'model/patients_location/patient_location_response.dart';



class HomeScreenBloc
    extends Bloc<HomeScreenEvent, HomeScreenState> {

  HomeScreenBloc() : super(HomeScreenInitial()) {

    on<PatientLocation>((event, emit) async {
      Position position = await Geolocator.getCurrentPosition();
      List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemarks.first;
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      final uri = Uri.parse(AppConst.patientsLocation);
      emit(PatientLocationLoaded());
      final response = await http. post(uri,
        headers: {
          'Authorization': 'Bearer $token',
          'CacheControl':'',
          'PostmanToken':''
        },
        body: PatientLocationRequest(
          latitude:position.latitude.toString(),
          longitude:position.longitude.toString(),
          address: place.street.toString(),
          city: place.locality.toString(),
          userId: "1",
        ).toJson(),
      );
      debugPrint('PatientsLocation access Token===>> ${token}');
      // stderr.writeln('An error occurred: ${e} ${response.body}');
      debugPrint('patients location===>> ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201){
     // debugPrint('patients location===>> ${response.body}');
        PatientLocationResponse patientLocationResponse=PatientLocationResponse.fromJson(jsonDecode(response.body));
        debugPrint('Patients location response=========>>>>>>>>>>>${response.body}');
        emit(PatientLocationResponseState(patientLocationResponse:patientLocationResponse));
      } else {
        emit(PatientLocationErrorState(error: 'Something went wrong'));
      }
    });
    on<NearByDoctor>((event, emit) async {
      Position position = await Geolocator.getCurrentPosition();
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('idToken');
      // List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      // Placemark place = placemarks.first;
      final uri = Uri.parse(AppConst.neareByDoctor);
      emit(NearByDoctorLoaded());
      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
        },
        body: NearByDoctorRequest(
          latitude:position.latitude.toString(),
          // latitude:'28.86207049645749',
          longitude:position.longitude.toString(),
          // longitude:"77.00891318824598",
        ).toJson(),
      );
      debugPrint('Near by Doctor access Token===>> ${token}');
      debugPrint('Near by Doctor location===>> ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201){
        debugPrint('near by doctor===>> ${response.statusCode == 200}');
        NearByDoctorResponse nearByDoctorResponse =NearByDoctorResponse.fromJson(jsonDecode(response.body));
        debugPrint(response.body);
        emit(NearByDoctorResponseState(nearByDoctorResponse:nearByDoctorResponse,));
      } else {
        emit(NearByDoctorErrorState(error:'Something went wrong'));
      }
    });
  }
}
