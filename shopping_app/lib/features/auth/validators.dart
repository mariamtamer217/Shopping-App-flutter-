import '../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class Validators {
  static String? name(String? value, BuildContext context) {
    final loc = AppLocalizations.of(context);
    if (value == null || value.trim().isEmpty)
      return loc.translate('fieldRequired');
    if (value.trim()[0] != value.trim()[0].toUpperCase())
      return loc.translate('nameUppercase');
    return null;
  }

  static String? email(String? value, BuildContext context) {
    final loc = AppLocalizations.of(context);
    if (value == null || value.isEmpty) return loc.translate('fieldRequired');
    if (!value.contains('@')) return loc.translate('emailInvalid');
    return null;
  }

  static String? password(String? value, BuildContext context) {
    final loc = AppLocalizations.of(context);
    if (value == null || value.length < 6)
      return loc.translate('passwordShort');
    return null;
  }
}
