import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/firebase_options.dart';
import 'package:my_project/src/core/logic/bloc_observer.dart';
import 'package:my_project/src/core/logic/logger.dart';
import 'package:my_project/src/feature/app/model/async_app_dependencies.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function(AsyncAppDependencies dependencies) builder,
) async {
  await runZonedGuarded(
    () => Logger.runLogging(
      () async {
        /// System settings
        WidgetsFlutterBinding.ensureInitialized();
        // To show notification bar when app loads
        await SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.manual,
          overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
        );

        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

        /// Firebase initialization
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );

        /// Catching flutter errors because they are not caught by zone
        FlutterError.onError = Logger.logFlutterError;

        /// BloC settings
        Bloc.observer = AppBlocObserver();
        Bloc.transformer = bloc_concurrency.sequential<Object?>();

        /// Getting asynchronous dependencies on app start
        final dependencies = await AsyncAppDependencies.obtain();

        /// App running
        runApp(await builder(dependencies));
      },
    ),
    Logger.logZoneError,
  );
}
