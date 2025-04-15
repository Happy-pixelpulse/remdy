// part of 'sign_in_bloc.dart';
//
// abstract class SignInEvent {}
//
// class CheckLocationServices extends SignInEvent {}
//
// class RequestLocationPermission extends SignInEvent {}
//
// class GoogleSignInEvent extends SignInEvent {}
part of 'sign_in_bloc.dart';

sealed class SignInEvent {}

class GoogleSignInEvent extends SignInEvent{}
class CheckLocationServices  extends SignInEvent{}

class AppleSignInEvent extends SignInEvent{}