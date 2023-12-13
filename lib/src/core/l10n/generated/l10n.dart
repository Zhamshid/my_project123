// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Войти`
  String get login {
    return Intl.message(
      'Войти',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Электронная почта`
  String get email {
    return Intl.message(
      'Электронная почта',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get register {
    return Intl.message(
      'Регистрация',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get phoneNumber {
    return Intl.message(
      'Номер телефона',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get enterPassword {
    return Intl.message(
      'Введите пароль',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get surname {
    return Intl.message(
      'Фамилия',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Введите имя`
  String get enterName {
    return Intl.message(
      'Введите имя',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Введите фамилию`
  String get enterSurname {
    return Intl.message(
      'Введите фамилию',
      name: 'enterSurname',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение`
  String get confirmation {
    return Intl.message(
      'Подтверждение',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `На ваш номер {phone} было отправлено СМС код для подтверждения. Введите его ниже`
  String codeSentToNumber(Object phone) {
    return Intl.message(
      'На ваш номер $phone было отправлено СМС код для подтверждения. Введите его ниже',
      name: 'codeSentToNumber',
      desc: '',
      args: [phone],
    );
  }

  /// `СМС код можно переотправить через: {seconds}`
  String resendSmsAfterSeconds(Object seconds) {
    return Intl.message(
      'СМС код можно переотправить через: $seconds',
      name: 'resendSmsAfterSeconds',
      desc: '',
      args: [seconds],
    );
  }

  /// `Отправить код снова`
  String get resendCode {
    return Intl.message(
      'Отправить код снова',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get home {
    return Intl.message(
      'Главная',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get logout {
    return Intl.message(
      'Выйти',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Новости`
  String get news {
    return Intl.message(
      'Новости',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Настройки профиля`
  String get profileSettings {
    return Intl.message(
      'Настройки профиля',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Изменить язык`
  String get changeLanguage {
    return Intl.message(
      'Изменить язык',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Язык приложения`
  String get appLanguage {
    return Intl.message(
      'Язык приложения',
      name: 'appLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get done {
    return Intl.message(
      'Готово',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Успешно обновлено`
  String get successfullyUpdated {
    return Intl.message(
      'Успешно обновлено',
      name: 'successfullyUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Мой уникальный код`
  String get myUniqueCode {
    return Intl.message(
      'Мой уникальный код',
      name: 'myUniqueCode',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'kk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
