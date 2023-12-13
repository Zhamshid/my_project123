import 'package:my_project/src/bootstrap.dart';
import 'package:my_project/src/feature/app/app.dart';

void main() {
  bootstrap(
    (dependencies) => App(
      sharedPreferences: dependencies.sharedPreferences,
      packageInfo: dependencies.packageInfo,
    ),
  );
}
