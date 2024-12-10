
part of 'internet_connection_bloc.dart';

abstract class InternetConnectionEvent {}
class InternetConnection extends InternetConnectionEvent {}
class NetworkNotify extends InternetConnectionEvent {
  final bool isConnected;
  NetworkNotify({this.isConnected = false});
}
