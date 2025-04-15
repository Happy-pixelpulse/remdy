import 'model/use_profile_response_model.dart';

abstract class UserProfileState {}

final class UserProfileInitial extends UserProfileState {}

class UserProfileResponseState extends UserProfileState {
  UseProfileResponse useProfileResponse;

  UserProfileResponseState({required this.useProfileResponse});
}

class UserProfileLoaded extends UserProfileState {}

class UserProfileErrorState extends UserProfileState {
  String error;

  UserProfileErrorState({required this.error});
}
