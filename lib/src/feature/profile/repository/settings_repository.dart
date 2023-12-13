import 'package:my_project/src/feature/profile/dao/settings_dao.dart';
import 'package:my_project/src/feature/profile/enum/app_language.dart';

abstract class ISettingsRepository {
  bool get isLocaleSelected;

  AppLanguage get locale;

  Future<void> setLocale(AppLanguage locale);
}

class SettingsRepository implements ISettingsRepository {
  final ISettingsDao _settingsDao;

  SettingsRepository({
    required ISettingsDao settingsDao,
  }) : _settingsDao = settingsDao;

  @override
  AppLanguage get locale => AppLanguage.fromString(_settingsDao.locale);

  @override
  bool get isLocaleSelected => _settingsDao.isLocaleSelected;

  @override
  Future<void> setLocale(AppLanguage val) => _settingsDao.setLocale(val.name);
}
