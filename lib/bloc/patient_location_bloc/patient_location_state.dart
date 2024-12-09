part of 'patient_location_bloc.dart';

abstract class PatientLocationState {}

final class PatientLocationInitial extends PatientLocationState {}
class PatientLocationRequestState extends PatientLocationState{}
class PatientLocationResponseState extends PatientLocationState {
  PatientLocationResponse patientLocationResponse;

  PatientLocationResponseState({required this.patientLocationResponse});
}

class PatientLocationErrorState extends PatientLocationState {
  String error;

  PatientLocationErrorState({required this.error});
}

class PatientLocationSuccessState extends PatientLocationState{}

