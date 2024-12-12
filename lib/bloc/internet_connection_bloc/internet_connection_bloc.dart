
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
part 'internet_connection_event.dart';
part 'internet_connection_state.dart';

class InternetConnectionBloc extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc() : super(InternetConnectionInitial()) {
    on<InternetConnectionEvent>((event, emit) async {
     List<ConnectivityResult>  result = await Connectivity().checkConnectivity();
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        emit(UserOnlineState());
      } else {
        emit(UserOfflineState());
      }
    });
  }
}
