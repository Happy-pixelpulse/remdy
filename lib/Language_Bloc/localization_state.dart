part of 'localization_bloc.dart';


class AppLocalizationState extends Equatable{

  final Language selectedLanguage;
  const AppLocalizationState({Language? language}):selectedLanguage = language ?? Language.english;
  @override
  List<Object?> get props => [selectedLanguage];

  AppLocalizationState copyWith ({Language? selectedLanguage}){
    return AppLocalizationState(language: selectedLanguage ?? this.selectedLanguage);
  }
}
