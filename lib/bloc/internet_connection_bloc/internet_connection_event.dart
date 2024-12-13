abstract class ConnectivityEvent {}

class ConnectivityChangedEvent extends ConnectivityEvent {
  final bool isOnline;

  ConnectivityChangedEvent({required this.isOnline});
}
