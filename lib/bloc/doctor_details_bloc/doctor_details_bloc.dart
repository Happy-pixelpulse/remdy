import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:remdy/bloc/doctor_details_bloc/doctor_details_event.dart';
import 'package:remdy/bloc/doctor_details_bloc/doctor_details_state.dart';

import 'model/doctor_details_response.dart';

class DoctorDetailsBloc extends Bloc<DoctorDetailsEvent, DoctorDetailsState> {
  DoctorDetailsBloc() : super(DoctorDetailsInitial()) {
    on<DoctorsDetails>((event, emit) async {
      const url = 'http://184.169.211.131:3000/api/v1/homepage/get-doctors/1';
      final uri = Uri.parse(url);
      emit(DoctorDetailsLoaded());
      final response = await http.get(
        uri,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        DoctorDetailResponse doctorDetailsResponse =
        DoctorDetailResponse.fromJson(jsonDecode(response.body));
        debugPrint(response.body);
       emit(DoctorDetailsResponseState(doctorDetailResponse:doctorDetailsResponse ));
      } else {
        emit(DoctorDetailsErrorState(error: 'Something went wrong'));
      }
    });
  }
}
