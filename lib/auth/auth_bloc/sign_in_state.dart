part of 'sign_in_bloc.dart';

abstract class SignInState {}

final class SignInInitial extends SignInState {}

class GoogleSignInResponseState extends SignInState {
  SignInResponse signInResponse;

  GoogleSignInResponseState({required this.signInResponse});
}

class GoogleSignInErrorState extends SignInState {
  String error;

  GoogleSignInErrorState({required this.error});
}

class SignInProgressState extends SignInState{}
class SignInRequestState extends SignInState{}

class LocationServicesOn extends SignInState {}

class LocationServicesOff extends SignInState {}
class LocationPermissionDenied extends SignInState {}
class LocationPermissionPermanentlyDenied extends SignInState {}


// part of 'sign_in_bloc.dart';
//
// abstract class SignInState {}
//
// class SignInInitial extends SignInState {}
//
// class LocationServicesOn extends SignInState {}
//
// class LocationServicesOff extends SignInState {}
//
// class LocationPermissionGranted extends SignInState {}
//
// class LocationPermissionDenied extends SignInState {}
//
// class LocationPermissionPermanentlyDenied extends SignInState {}
//
// class SignInRequestState extends SignInState {}
//
// class GoogleSignInResponseState extends SignInState {
//   final SignInResponse signInResponse;
//   GoogleSignInResponseState({required this.signInResponse});
// }
//  class SignInProgressState extends SignInState{}
// class GoogleSignInErrorState extends SignInState {
//   final String error;
//   GoogleSignInErrorState({required this.error});
// }
//
//
//
// // part of 'sign_in_bloc.dart';
// //
// // abstract class SignInState {}
// //
// // final class SignInInitial extends SignInState {}
// //
// // class GoogleSignInResponseState extends SignInState {
// //   SignInResponse signInResponse;
// //
// //   GoogleSignInResponseState({required this.signInResponse});
// // }
// //
// // class GoogleSignInErrorState extends SignInState {
// //   String error;
// //
// //   GoogleSignInErrorState({required this.error});
// // }
// //
// // class SignInProgressState extends SignInState{}
// // class SignInRequestState extends SignInState{}
// //
// // class LocationServicesOn extends SignInState {}
// //
// // class LocationServicesOff extends SignInState {}