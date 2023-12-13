// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(phone) =>
      "На ваш номер ${phone} было отправлено СМС код для подтверждения. Введите его ниже";

  static String m1(seconds) => "СМС код можно переотправить через: ${seconds}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appLanguage": MessageLookupByLibrary.simpleMessage("Язык приложения"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Изменить язык"),
        "codeSentToNumber": m0,
        "confirmation": MessageLookupByLibrary.simpleMessage("Подтверждение"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "email": MessageLookupByLibrary.simpleMessage("Электронная почта"),
        "enterName": MessageLookupByLibrary.simpleMessage("Введите имя"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "enterSurname": MessageLookupByLibrary.simpleMessage("Введите фамилию"),
        "home": MessageLookupByLibrary.simpleMessage("Главная"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "login": MessageLookupByLibrary.simpleMessage("Войти"),
        "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "myUniqueCode":
            MessageLookupByLibrary.simpleMessage("Мой уникальный код"),
        "name": MessageLookupByLibrary.simpleMessage("Имя"),
        "news": MessageLookupByLibrary.simpleMessage("Новости"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Номер телефона"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "profileSettings":
            MessageLookupByLibrary.simpleMessage("Настройки профиля"),
        "register": MessageLookupByLibrary.simpleMessage("Регистрация"),
        "resendCode":
            MessageLookupByLibrary.simpleMessage("Отправить код снова"),
        "resendSmsAfterSeconds": m1,
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "successfullyUpdated":
            MessageLookupByLibrary.simpleMessage("Успешно обновлено"),
        "surname": MessageLookupByLibrary.simpleMessage("Фамилия")
      };
}
