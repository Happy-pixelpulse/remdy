import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationState(Locale('en'))) {
    on<ChangeLanguageEvent>((event, emit) {
      emit(LocalizationState(event.locale));
    });
  }
}
