import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:remdy/bloc/patient_location_bloc/model/patient_location_response.dart';

import 'model/patient_location_request.dart';

part 'patient_location_event.dart';
part 'patient_location_state.dart';

class PatientLocationBloc
    extends Bloc<PatientLocationEvent, PatientLocationState> {
  PatientLocationBloc() : super(PatientLocationInitial()) {
    on<PatientLocationEvent>((event, emit) async {
      Location location = Location();
      LocationData locationData;
      locationData = await location.getLocation();
      const url = 'http://184.169.211.131:3000/api/v1/user/patient-location';
      final uri = Uri.parse(url);
      final response = await http.post(
        uri,
        body: PatientLocationRequest(
          latitude: locationData.latitude.toString(),
          longitude: locationData.longitude.toString(),
          address: 'United state, 123455',
          city: 'New York',
          userId: 1,
        ).toJson(),
      );
      emit(PatientLocationRequestState());
      if (response.statusCode == 200 || response.statusCode == 201){
        PatientLocationResponse patientLocationResponse =
        PatientLocationResponse.fromJson(jsonDecode(response.body));
        emit(PatientLocationResponseState(patientLocationResponse:patientLocationResponse));
      } else {
        emit(PatientLocationErrorState(error: 'Something went wrong'));
      }
    });
  }
}
