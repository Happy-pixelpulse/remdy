abstract class ConnectivityEvent {}

class ConnectivityChangedEvent extends ConnectivityEvent {
  final bool isOnline;

  ConnectivityChangedEvent({required this.isOnline});
}
// abstract class NetworkEvent {}
//
// class NetworkObserve extends NetworkEvent {}
//
// class NetworkNotify extends NetworkEvent {
//   final bool isConnected;
//
//   NetworkNotify({this.isConnected = false});
// }