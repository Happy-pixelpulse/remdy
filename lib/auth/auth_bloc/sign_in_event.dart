part of 'sign_in_bloc.dart';

sealed class SignInEvent {}

class GoogleSignInEvent extends SignInEvent{
  SignInRequest signInRequest;
  GoogleSignInEvent({required this.signInRequest});
}

class AppleSignInEvent extends SignInEvent{}