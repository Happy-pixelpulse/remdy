import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'internet_connection_event.dart';
import 'internet_connection_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  late StreamSubscription _connectivitySubscription;

  final InternetConnectionChecker _connectionChecker =
  InternetConnectionChecker.createInstance();

  InternetBloc() : super(InternetLoading()) {
    _connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((result) async {
          final hasInternet = await _connectionChecker.hasConnection;
          add(InternetStatusChanged(hasInternet));
        });


    on<InternetStatusChanged>((event, emit) {
      if (event.isConnected) {
        emit(InternetConnectedState());
      } else {
        emit(InternetDisconnectedState());
      }
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
