

import 'model/nearby_doctor/nearby_doctor_response.dart';
import 'model/patients_location/patient_location_response.dart';

abstract class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}
class PatientLocationRequestState extends HomeScreenState{}
class PatientLocationResponseState extends HomeScreenState {
  PatientLocationResponse patientLocationResponse;

  PatientLocationResponseState({required this.patientLocationResponse});
}
class PatientLocationLoaded extends HomeScreenState {}
class PatientLocationErrorState extends HomeScreenState {
  String error;

  PatientLocationErrorState({required this.error});
}
class NearByDoctorRequestState extends HomeScreenState{}
class NearByDoctorResponseState extends HomeScreenState{
  NearByDoctorResponse nearByDoctorResponse;
  NearByDoctorResponseState({required this.nearByDoctorResponse});
}
class NearByDoctorLoaded extends HomeScreenState {}
class NearByDoctorErrorState extends HomeScreenState{
  String error;
  NearByDoctorErrorState({required this.error});
}