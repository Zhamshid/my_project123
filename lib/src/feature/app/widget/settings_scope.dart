import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/widgets/bloc_scope.dart';
import 'package:my_project/src/feature/profile/bloc/settings/settings_bloc.dart';
import 'package:my_project/src/feature/profile/enum/app_language.dart';
import 'package:pure/pure.dart';

AppLanguage _locale(SettingsState state) => state.data.locale;

Locale _localeToLocale(AppLanguage locale) => locale.when(
      kk: () => const Locale('kk'),
      ru: () => const Locale('ru'),
      // en: () => const Locale('en'),
    );

class SettingsScope extends StatelessWidget {
  static const BlocScope<SettingsEvent, SettingsState, SettingsBloc> _scope =
      BlocScope();

  final Widget child;

  const SettingsScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  // --- Data --- //

  static ScopeData<Locale> get localeOf =>
      _localeToLocale.dot(_locale).pipe(_scope.select);

  static ScopeData<AppLanguage> get appLanguageOf => _scope.select(_locale);

  // --- Methods --- //

  static UnaryScopeMethod<AppLanguage> get setLocale => _scope.unary(
        (context, locale) => SettingsEvent.setLocale(locale: locale),
      );

  // --- Build --- //

  @override
  Widget build(BuildContext context) => BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(
          settingsRepository: context.dependencies.settingsRepository,
        ),
        child: child,
      );
}
