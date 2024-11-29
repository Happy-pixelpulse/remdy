part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

class GoogleSignInResponseState extends SignInState {
  SignInResponse signInResponse;

  GoogleSignInResponseState({required this.signInResponse});
}

class GoogleSignInErrorState extends SignInState {
  String error;

  GoogleSignInErrorState({required this.error});
}
