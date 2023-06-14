import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sahilweb/utils/constants.dart';

import 'lang_en.dart';
import 'lang_gj.dart';
import 'lang_hi.dart';
import 'languages.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        LanguageType.English,
        LanguageType.Gujarati,
        LanguageType.Hindi
      ].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    switch (locale.languageCode) {
      case LanguageType.English:
        return LanguageEn();
      case LanguageType.Hindi:
        return LanguageHi();
      case LanguageType.Gujarati:
        return LanguageGj();
      default:
        return LanguageEn();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}
