import 'package:flutter/widgets.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/model/dependencies_scope.dart';
import 'package:my_project/src/core/model/dependencies_storage.dart';
import 'package:my_project/src/feature/app/scope/app_scope.dart';
import 'package:my_project/src/feature/app/widget/app_configuration.dart';
import 'package:my_project/src/feature/app/widget/settings_scope.dart';
import 'package:my_project/src/feature/auth/scope/user_scope.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  const App({
    required this.sharedPreferences,
    required this.packageInfo,
    super.key,
  });

  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;

  @override
  Widget build(BuildContext context) => DependenciesScope(
        create: (context) => DependenciesStorage(
          sharedPreferences: sharedPreferences,
          packageInfo: packageInfo,
        ),
        child: Builder(
          builder: (ctx) {
            return UserScope(
              userRepository: ctx.dependencies.userRepository,
              child: AppScope(
                child: Builder(
                  builder: (c) {
                    return SettingsScope(
                      child: AppConfiguration(),
                    );
                  },
                ),
              ),
            );
          },
        ),
      );
}
