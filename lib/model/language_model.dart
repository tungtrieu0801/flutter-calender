import 'package:flutter/material.dart';

class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList(BuildContext context) {
    return <Language>[
      Language(1, "🇻🇳", "vietnam", "vi"),
      Language(2, "🇬🇧", "english", "en"),
      Language(3, "🇬🇧", "japan", "ja")
    ];
  }
}