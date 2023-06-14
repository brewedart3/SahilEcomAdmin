import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sahilweb/main.dart';
import 'package:sahilweb/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';




const String prefSelectedLanguageCode = "SelectedLanguageCode";

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(prefSelectedLanguageCode, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(prefSelectedLanguageCode) ?? LanguageType.English;
  return _locale(languageCode);
}
Future<String> getLanguageCode() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(prefSelectedLanguageCode) ?? LanguageType.English;
  return languageCode;
}

Locale _locale(String languageCode) {
  return languageCode.isNotEmpty
      ? Locale(languageCode, '')
      : const Locale(LanguageType.English, '');
}

void changeLanguage(BuildContext context, String selectedLanguageCode) async {
  var locale = await setLocale(selectedLanguageCode);
  MyApp.setLocale(context, locale);
}