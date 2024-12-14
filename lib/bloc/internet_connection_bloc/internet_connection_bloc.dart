import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'internet_connection_event.dart';
import 'internet_connection_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final Connectivity _connectivity;

  ConnectivityBloc(this._connectivity) : super(ConnectivityInitial()) {
    on<ConnectivityChangedEvent>((event, emit)  {
      _connectivity.onConnectivityChanged.listen((result) {
        if (result.first == ConnectivityResult.mobile ||
            result.first == ConnectivityResult.wifi) {
          add(ConnectivityChangedEvent(isOnline: true));
          emit(ConnectivityOnline());
        } else {
          add(ConnectivityChangedEvent(isOnline: false));
          emit(ConnectivityOffline());
        }
      });
    });
  }
}
