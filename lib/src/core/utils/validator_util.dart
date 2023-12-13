import 'package:freezed_annotation/freezed_annotation.dart';

@sealed
class ValidatorUtil {
  ValidatorUtil._();
  static const int _usernameMin = 2;

  static const int _usernameMax = 20;

  /// Make validation
  static bool validate(String source, String pattern) =>
      RegExp(pattern).hasMatch(source);

  /// Card number
  static bool creditCard(String source) => validate(source, r'^[0-9]{13,16}$');

  /// ICQ
  static bool icq(String source) => validate(source, r'^([1-9])+(?:-?\d){4,}$');

  /// Is integer
  static bool integer(String source) => validate(source, r'^[0-9]+$');

  /// Latin letters
  static bool latin(String source) => validate(source, r'^[a-zA-Z]+$');

  /// Cyrillic letters
  static bool cyrillic(String source) => validate(source, r'^[а-яА-ЯёЁ]+$');

  /// Latin letters and numbers
  static bool integerLatin(String source) =>
      validate(source, r'^[a-zA-Z0-9]+$');

  /// Cyrillic letters and numbers
  static bool integerCyrillic(String source) =>
      validate(source, r'^[а-яА-ЯёЁ0-9]+$');

  /// Latin and Cyrillic letters and numbers
  static bool integerLatinCyrillic(String source) =>
      validate(source, r'^[a-zA-Z0-9]+$');

  /// Domain (forex: abcd.com)
  static bool domain(String source) => validate(
        source,
        r'^([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}$',
      );

  /// Internet Protocol v4
  static bool internetProtocolV4(String source) => validate(
        source,
        r'^((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$',
      );

  /// Internet Protocol v6
  static bool internetProtocolV6(String source) =>
      validate(source, r'((^|:)([0-9a-fA-F]{0,4})){1,8}$');

  /// Username
  /// (with 2-20 symbol limitations,
  /// which could be numbers and letters with letter first)
  static bool username(
    String source, [
    int min = _usernameMin,
    int max = _usernameMax,
  ]) =>
      validate(
        source,
        r'^[a-zA-Z][a-zA-Z0-9-_\.]{'
        '${(min - 1).clamp(0, max - 1)},${(max - 1).gcd(min - 1)}'
        r'}$',
      );

  /// Twitter Username
  static bool usernameTwitter(String source) =>
      validate(source, r'^[A-Za-z0-9_]{1,15}$');

  /// Facebook Username
  static bool usernameFacebook(String source) =>
      validate(source, r'^[a-z\d\.]{5,}$');

  // /// Password
  // /// (At least 7 characters, at least 1 uppercase letter, at least 1 number)
  // static Map<PasswordCriteria, bool> password(String source) {
  //   const upperCase = '^(?=.*?[A-Z])';
  //   const oneNumber = '^(?=.*?[0-9])';

  //   final upperValidation = validate(source, upperCase);
  //   final oneNumberValidation = validate(source, oneNumber);
  //   final lengthValidation = source.length > 6;

  //   return {
  //     PasswordCriteria.upperCase: upperValidation,
  //     PasswordCriteria.number: oneNumberValidation,
  //     PasswordCriteria.minSevenChar: lengthValidation,
  //   };
  // }

  /// DateTime
  static bool date(String source) => DateTime.tryParse(source) is DateTime;

  /// Time in format HH:MM:SS
  static bool time(String source) =>
      validate(source, r'^([0-1]\d|2[0-3])(:[0-5]\d){2}$');

  /// Numbers with or without decimals
  /// Format: 9 or 9.9 or 9,9
  static bool real(String source) => validate(source, r'^\-?\d+(\.\d{0,})?$');

  /// Price
  static bool price(String source) => validate(source, r'^\d+((\.|,)\d{2})?$');

  /// Price with dot (Format: 1.00)
  static bool priceWithDot(String source) =>
      validate(source, r'^\d+(\.\d{2})?$');

  /// Price with comma (Format: 1,00)
  static bool priceWithComma(String source) =>
      validate(source, r'^\d+(,\d{2})?$');

  /// UUID
  static bool uuid(String source) => validate(
        source,
        r'^[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}'
        r'\-[0-9A-Fa-f]{12}$',
      );

  /// Latitude or Longitude
  static bool latitudeOrLongitude(String source) =>
      validate(source, r'^-?\d{1,3}\.\d+$');

  /// E-mail
  static bool email(String source) {
    // final parts = source.split('@');

    // return parts.length == _partsOfEmail && parts.first.isNotEmpty
    //&& parts.last.isNotEmpty;
    return validate(
      source,
      r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$',
    );
  }

  /// URL
  static bool url(String source) => Uri.tryParse(source)?.isAbsolute ?? false;

  /// Mac-address
  static bool mac(String source) => validate(
        source,
        r'^([0-9a-fA-F]{2}([:-]|$)){6}$|([0-9a-fA-F]{4}([.]|$)){3}$',
      );

  /// Phone Number
  /// (Format: +99(99)9999-9999)
  static bool phone(String source) =>
      validate(source, r'^[\+]\d{2}[\(]\d{2}[\)]\d{4}[\-]\d{4}$');

  /// Hex-Color
  /// (Format is #CCC or #CCCCCC)
  static bool color(String source) =>
      validate(source, r'^#?([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$');

  /// ISBN
  static bool isbn(String source) => validate(
        source,
        r'^(?:(?=.{17}$)97[89][ -](?:[0-9]+['
        r' -]){2}[0-9]+[ -][0-9]|97[89][0-9]{10}|(?=.{13}$)(?:[0-9]+['
        r' -]){2}[0-9]+[ -][0-9Xx]|[0-9]{9}[0-9Xx])$',
      );

  /// Md5 Hash
  static bool md5(String source) => validate(
        source,
        r'^[0-9a-fA-F]{32}$',
      );
}

extension ValidatorExtension on String {
  bool validate(String pattern) => ValidatorUtil.validate(this, pattern);
}
