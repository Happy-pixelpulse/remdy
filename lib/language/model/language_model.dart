import 'package:flutter/material.dart';

enum Language {
  english(
      Locale('en','US'),
      'English'
  ),
  french(
    Locale('fr','DUTCH'),
    'French',
  );

  const Language(this.value, this.text);

  final Locale value;

  final String text;
}
