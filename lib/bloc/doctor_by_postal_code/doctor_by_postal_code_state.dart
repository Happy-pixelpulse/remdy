import 'package:remdy/bloc/doctor_by_postal_code/model/doctor_by_postal_code_response.dart';

abstract class DoctorByPostalCodeState {}

final class DoctorByPostalCodeInitial extends DoctorByPostalCodeState {}

class DoctorByPostalCodeRequestState extends DoctorByPostalCodeState {}

class DoctorByPostalCodeResponseState extends DoctorByPostalCodeState {
  DoctorByPostalCodeResponse doctorByPostalCodeResponse;

  DoctorByPostalCodeResponseState({required this.doctorByPostalCodeResponse});
}

class DoctorByPostalCodeLoaded extends DoctorByPostalCodeState {}

class DoctorByPostalCodeErrorState extends DoctorByPostalCodeState {
  String error;

  DoctorByPostalCodeErrorState({required this.error});
}
