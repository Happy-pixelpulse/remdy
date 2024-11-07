import 'dart:ui';

enum Language {
  english(
    Locale('en'),
    'English'
  ),
  french(
    Locale('fr'),
    'French',
  );

  const Language(this.value, this.text);

  final Locale value;
  final String text;
}
