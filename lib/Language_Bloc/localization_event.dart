part of 'localization_bloc.dart';

class AppLocalizationEvent extends Equatable{
  const AppLocalizationEvent();
  @override
List<Object> get props => [];
}
class ChangeAppLocalization extends AppLocalizationEvent{
  final Language selectedLanguage;
  const ChangeAppLocalization({required this.selectedLanguage});
  @override
  List<Object> get props => [selectedLanguage];
}
class GetLanguage extends AppLocalizationEvent{}