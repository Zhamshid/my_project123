// ignore_for_file: prefer-correct-identifier-length

import 'package:my_project/src/core/extensions/object.dart';

enum AppLanguage with Compare<AppLanguage> {
  kk(
    'Қазақша',
    'Kz',
    'kk',
  ),

  ru(
    'Русский',
    'Ru',
    'ru',
  );

  const AppLanguage(this.title, this.code, this.localeCode);

  final String title;
  final String code;
  final String localeCode;
  // final String flags;

  // ignore: long-parameter-list
  R when<R>({
    required R Function() kk,
    required R Function() ru,
    // required R Function() en,
  }) {
    switch (this) {
      case AppLanguage.kk:
        return kk();
      case AppLanguage.ru:
        return ru();
      // case AppLanguage.en:
      //   return en();
    }
  }

  static AppLanguage fromString(String source) =>
      AppLanguage.values.byName(source);

  static String getCurrentLanguageTitle(AppLanguage selectedLanguage) {
    switch (selectedLanguage) {
      case AppLanguage.kk:
        return AppLanguage.kk.title;
      case AppLanguage.ru:
        return AppLanguage.ru.title;
      default:
        return ''; // Handle the default case if needed
    }
  }

  @override
  int compareTo(AppLanguage other) => index.compareTo(other.index);
}
