import 'package:remdy/bloc/wish_list_doctor/model/wish_list_doctor_response.dart';

abstract class WishListDoctorState {}

final class DoctorByPostalCodeInitial extends WishListDoctorState {}

class WishListDoctorRequestState extends WishListDoctorState {}

class WishListDoctorResponseState extends WishListDoctorState {
  WishListDoctorResponse wishListDoctorResponse;

  WishListDoctorResponseState({required this.wishListDoctorResponse});
}

class WishListDoctorLoaded extends WishListDoctorState {}

class WishListDoctorErrorState extends WishListDoctorState {
  String error;

  WishListDoctorErrorState({required this.error});
}
