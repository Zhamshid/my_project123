import 'package:flutter/material.dart';
import 'package:my_project/src/core/l10n/generated/l10n.dart';
import 'package:my_project/src/core/model/dependencies_scope.dart';
import 'package:my_project/src/core/model/dependencies_storage.dart';
import 'package:my_project/src/feature/app/widget/settings_scope.dart';
import 'package:my_project/src/feature/profile/enum/app_language.dart';

extension BuildContextX on BuildContext {
  IDependenciesStorage get dependencies => DependenciesScope.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  AppLocalizations get localized => AppLocalizations.of(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  /// Выбранный язык
  AppLanguage get currentLocale => SettingsScope.appLanguageOf(this);
}
