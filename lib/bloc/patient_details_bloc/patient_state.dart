import 'package:remdy/bloc/patient_details_bloc/patient_model_class/patient_response.dart';

abstract class PatientState {}

final class PatientsListInitial extends PatientState {}

class NearByHospitalRequestState extends PatientState {}

class PatientsResponseState extends PatientState {
  PatientResponse patientResponse;

  PatientsResponseState({required this.patientResponse});
}

class NearByHospitalLoaded extends PatientState {}

class PatientsListErrorState extends PatientState {
  String error;

  PatientsListErrorState({required this.error});
}
