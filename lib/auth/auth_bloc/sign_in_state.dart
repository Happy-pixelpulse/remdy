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