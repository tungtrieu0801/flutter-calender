import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
const String ENGLISH = 'en';
const String VIETNAMESE = 'vi';
const String JAPAN = 'ja';
AppLocalizations translation (BuildContext context) {
  return AppLocalizations.of(context)!;
}

Future<Locale> setLocale(String languageCode) async {
  languageCode = languageCode.isEmpty ? 'vi' : languageCode;

  // Trả về Locale tương ứng với languageCode
  return _locale(languageCode);
}


Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, '');
    case VIETNAMESE:
      return const Locale(VIETNAMESE, '');
    case JAPAN:
      return const Locale(JAPAN, '');
    default:
      return const Locale(VIETNAMESE, '');
  }
}

Future<Locale> getLanguageLocal() async {
  Future.delayed(const Duration(milliseconds: 2000));
  return const Locale('vi', 'VN');
}
