// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:remdy/bloc/internet_connection_bloc/internet_connection_bloc.dart';
//
// import '../../bloc/internet_connection_bloc/internet_connection_event.dart';
//
// class NetworkHelper {
//
//   static void observeNetwork() {
//     Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
//       if (results == ConnectivityResult.none) {
//         NetworkBloc().add(NetworkNotify());
//       } else {
//         NetworkBloc().add(NetworkNotify(isConnected: true));
//       }
//     });
//   }
// }