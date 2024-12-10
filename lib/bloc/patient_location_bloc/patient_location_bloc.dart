import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:remdy/bloc/patient_location_bloc/model/patient_location_response.dart';
import 'model/patient_location_request.dart';
part 'patient_location_event.dart';
part 'patient_location_state.dart';

class PatientLocationBloc
    extends Bloc<PatientLocationEvent, PatientLocationState> {
  PatientLocationBloc() : super(PatientLocationInitial()) {
    on<PatientLocationEvent>((event, emit) async {
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
  }
}
