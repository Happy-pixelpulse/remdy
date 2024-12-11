import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:remdy/bloc/home_screen_bloc/model/nearby_doctor/nearby_doctor_response.dart';
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
      const url = 'http://184.169.211.131:3000/api/v1/user/patient-location';
      final uri = Uri.parse(url);
      final response = await http.post(
        uri,
        body: PatientLocationRequest(
          latitude:position.latitude.toString(),
          longitude:position.longitude.toString(),
          address: place.street.toString(),
          city: place.locality.toString(),
          userId: '1',
        ).toJson(),
      );
      emit(PatientLocationRequestState());
      emit(PatientLocationLoaded());
      if (response.statusCode == 200 || response.statusCode == 201){
        PatientLocationResponse patientLocationResponse =
        PatientLocationResponse.fromJson(jsonDecode(response.body));
        debugPrint('${response.body}');
        emit(PatientLocationResponseState(patientLocationResponse:patientLocationResponse));
      } else {
        emit(PatientLocationErrorState(error: 'Something went wrong'));
      }
    });
    on<NearByDoctor>((event, emit) async {
      Position position = await Geolocator.getCurrentPosition();
      const url = 'http://184.169.211.131:3000/api/v1/homepage/get-all-near-by-doctors';
      final uri = Uri.parse(url);
      final response = await http.post(
        uri,
        body: NearByDoctorRequest(
          latitude:position.latitude.toString(),
          longitude:position.longitude.toString(),
        ).toJson(),
      );
      emit(NearByDoctorRequestState());
      // emit(NearByDoctorLoaded());
      if (response.statusCode == 200 || response.statusCode == 201){
        NearByDoctorResponse nearByDoctorResponse =NearByDoctorResponse.fromJson(jsonDecode(response.body));
        debugPrint('${response.body}');
        // emit(NearByDoctorResponseState(nearByDoctorResponse:nearByDoctorResponse));
      } else {
        // emit(NearByDoctorErrorState(error:'Something went wrong'));
      }
    });
  }
}
