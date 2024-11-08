import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations? getLocalization() {
    return AppLocalizations.of(this);
  }
}

extension EmptyData on String? {
  String checkForEmpty() {
    return this ?? '';
  }
}
