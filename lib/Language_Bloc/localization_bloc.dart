import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:remdy/screen/language_screen.dart';

part 'localization_event.dart';
part 'localization_state.dart';

class AppLocalizationBloc extends Bloc<AppLocalizationEvent,AppLocalizationState> {
  AppLocalizationBloc() : super(const AppLocalizationState()) {
    on<ChangeAppLocalization>(onChangeLanguage);
  }
  onChangeLanguage(
      ChangeAppLocalization event, Emitter<AppLocalizationState> emit){
    emit (state.copyWith(selectedLanguage: event.selectedLanguage));
  }
}
