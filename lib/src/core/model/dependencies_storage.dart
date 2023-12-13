import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_project/src/core/logic/firebase_repository.dart';
import 'package:my_project/src/core/network/dio_module.dart';
import 'package:my_project/src/core/network/layers/network_connectivity.dart';
import 'package:my_project/src/core/network/layers/network_executer.dart';
import 'package:my_project/src/feature/auth/repository/user_repository.dart';
import 'package:my_project/src/feature/profile/dao/settings_dao.dart';
import 'package:my_project/src/feature/profile/repository/settings_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IDependenciesStorage {
  // Environment get environment;

  SharedPreferences get sharedPreferences;

  PackageInfo get packageInfo;

  NetworkExecuter get networkExecuter;

  NetworkConnectivity get connectivity;

  Dio get dio;

  /// Repositories
  IUserRepository get userRepository;

  ISettingsRepository get settingsRepository;

  FirebaseRepository get firebaseRepository;

  FirebaseAuth get auth;

  void close();
}

class DependenciesStorage implements IDependenciesStorage {
  DependenciesStorage({
    required this.sharedPreferences,
    required this.packageInfo,
  });

  Dio? _dio;

  NetworkExecuter? _networkExecuter;

  NetworkConnectivity? _connectivity;

  @override
  final SharedPreferences sharedPreferences;
  @override
  final PackageInfo packageInfo;
  // @override
  // final Environment environment;

  @override
  Dio get dio => _dio ??= DioModule.configure(userRepository);

  @override
  NetworkConnectivity get connectivity =>
      _connectivity ??= NetworkConnectivity();

  @override
  NetworkExecuter get networkExecuter =>
      _networkExecuter ??= NetworkExecuter(connectivity: connectivity);

  @override
  IUserRepository get userRepository =>
      UserRepositoryImpl(prefs: sharedPreferences);

  @override
  ISettingsRepository get settingsRepository => SettingsRepository(
        settingsDao: SettingsDao(prefs: sharedPreferences),
      );

  @override
  FirebaseAuth get auth => FirebaseAuth.instance;

  @override
  FirebaseRepository get firebaseRepository => FirebaseRepository(
        auth: auth,
        preferences: sharedPreferences,
      );

  @override
  void close() {
    dio.close();
  }
}
