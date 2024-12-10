part of 'internet_connection_bloc.dart';

abstract class InternetConnectionState {}

final class InternetConnectionInitial extends InternetConnectionState {}
class UserOnlineState extends InternetConnectionState{}
class UserOfflineState extends InternetConnectionState{}
