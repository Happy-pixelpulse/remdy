
abstract class GoogleSignInState {}

class GoogleSignInInitial extends GoogleSignInState {}

class GoogleSignInInProgress extends GoogleSignInState {}

class GoogleSignInSuccess extends GoogleSignInState {
  final String userName;
  GoogleSignInSuccess(this.userName);
}

class GoogleSignInFailure extends GoogleSignInState {
  final String errorMessage;
  GoogleSignInFailure(this.errorMessage);
}