import 'package:remdy/bloc/doctor_details_bloc/model/doctor_details_response.dart';

abstract class DoctorDetailsState {}
final class DoctorDetailsInitial extends DoctorDetailsState {}
class DoctorDetailsResponseState extends DoctorDetailsState {
  DoctorDetailResponse doctorDetailResponse;

  DoctorDetailsResponseState({required this.doctorDetailResponse});
}
class DoctorDetailsLoaded extends DoctorDetailsState {}
class DoctorDetailsErrorState extends DoctorDetailsState {
  String error;

  DoctorDetailsErrorState({required this.error});
}