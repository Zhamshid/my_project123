import 'package:shared_preferences/shared_preferences.dart';

abstract class ISettingsDao {
  bool get isLocaleSelected;

  String get locale;

  Future<void> setLocale(String locale);
}

class SettingsDao implements ISettingsDao {
  final SharedPreferences prefs;
  SettingsDao({required this.prefs});

  @override
  bool get isLocaleSelected => prefs.containsKey('locale');

  @override
  @override
  String get locale => prefs.getString('locale') ?? 'ru';

  @override
  Future<void> setLocale(String locale) => prefs.setString('locale', locale);
}
