// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a kk locale. All the
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
  String get localeName => 'kk';

  static String m0(phone) =>
      "Сіз ${phone} нөміріңізге құпиясөз қабылданбады. Құпиясөзді енгізіңіз";

  static String m1(seconds) => "Құпиясөзді қайталаңыз: ${seconds}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appLanguage": MessageLookupByLibrary.simpleMessage("Қолданба тілі"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Тілді өзгерту"),
        "codeSentToNumber": m0,
        "confirmation": MessageLookupByLibrary.simpleMessage("Тіркелу"),
        "done": MessageLookupByLibrary.simpleMessage("Дайын"),
        "email": MessageLookupByLibrary.simpleMessage("Электронды почта"),
        "enterName": MessageLookupByLibrary.simpleMessage("Атыңызды енгізіңіз"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Құпиясөзді енгізіңіз"),
        "enterSurname":
            MessageLookupByLibrary.simpleMessage("Тегіңізді енгізіңіз"),
        "home": MessageLookupByLibrary.simpleMessage("Басты бет"),
        "language": MessageLookupByLibrary.simpleMessage("Тіл"),
        "login": MessageLookupByLibrary.simpleMessage("Кіру"),
        "logout": MessageLookupByLibrary.simpleMessage("Шығу"),
        "myUniqueCode":
            MessageLookupByLibrary.simpleMessage("Менің бірегей кодым"),
        "name": MessageLookupByLibrary.simpleMessage("Аты"),
        "news": MessageLookupByLibrary.simpleMessage("Жаңалықтар"),
        "password": MessageLookupByLibrary.simpleMessage("Құпиясөз"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Телефон нөмірі"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "profileSettings":
            MessageLookupByLibrary.simpleMessage("Профиль баптаулары"),
        "register": MessageLookupByLibrary.simpleMessage("Тіркелу"),
        "resendCode":
            MessageLookupByLibrary.simpleMessage("Құпиясөзді қайталаңыз"),
        "resendSmsAfterSeconds": m1,
        "settings": MessageLookupByLibrary.simpleMessage("Баптаулар"),
        "successfullyUpdated":
            MessageLookupByLibrary.simpleMessage("Сәтті жаңартылды"),
        "surname": MessageLookupByLibrary.simpleMessage("Тегі")
      };
}
