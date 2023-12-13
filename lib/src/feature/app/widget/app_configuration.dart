import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project/src/core/l10n/generated/l10n.dart';
import 'package:my_project/src/core/resources/app_theme.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/feature/app/widget/app_router_builder.dart';
import 'package:my_project/src/feature/app/widget/settings_scope.dart';

@immutable
class AppConfiguration extends StatelessWidget {
  const AppConfiguration({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = SettingsScope.localeOf(context, listen: true);
    return AppRouterBuilder(
      createRouter: (context) => AppRouter(),
      builder: (context, parser, delegate) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routeInformationParser: parser,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.delegate.supportedLocales,
            routerDelegate: delegate,
            locale: locale,
            theme: AppTheme.light,
            builder: (context, child) => child!,
          );
        },
      ),
    );
  }
}
