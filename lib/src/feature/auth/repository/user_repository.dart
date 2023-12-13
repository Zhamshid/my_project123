// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _tag = 'user_repository';

abstract class IUserRepository {
  String get token;

  String get refreshToken;

  /// Users phone number
  String get username;

  /// Users id
  String get userId;

  /// Last created business id
  String get lastBusinessID;

  bool get isKnownDevice;

  bool get isBiometricsAllowed;

  bool get isIntroShown;

  bool get isUserHasMembership;

  Future<bool> setUserId(String id);

  Future<bool> login(String token);

  Future<void> logOut();
  Future<bool> deleteToken();

  bool hasToken();

  Future<bool> setPin(String pin);

  String? getPin();

  Future<bool> deletePin();

  Future<bool> setIntroShown();

  Future<bool> setBiometricAllowed(bool value);

  int getAutoLock();

  Future<bool> setAutoLock(int seconds);
}

class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl({required this.prefs});

  final SharedPreferences prefs;

  @override
  bool get isIntroShown => prefs.getBool('${_tag}_intro') ?? false;

  @override
  bool get isKnownDevice =>
      (prefs.getBool('${_tag}_biometric_allowed') ?? false) || getPin() != null;

  @override
  bool get isBiometricsAllowed =>
      prefs.getBool('${_tag}_biometric_allowed') ?? false;

  @override
  String get token =>
      prefs.getString('${_tag}_token') ??
      prefs.getString('${_tag}_temp_token') ??
      '';

  @override
  String get username => prefs.getString('${_tag}_username') ?? '';

  @override
  bool get isUserHasMembership => prefs.getBool('${_tag}_membership') ?? false;

  @override
  String get userId => prefs.getString('${_tag}_user_id') ?? '';

  @override
  String get lastBusinessID =>
      prefs.getString('${_tag}_last_business_id') ?? '';

  @override
  String get refreshToken =>
      prefs.getString('${_tag}_refreshToken') ??
      prefs.getString('${_tag}_refresh_token') ??
      '';

  @override
  Future<bool> setUserId(String value) =>
      prefs.setString('${_tag}_user_id', value);

  @override
  Future<void> logOut() => prefs.clear();
  @override
  Future<bool> deleteToken() async {
    await Future.wait([
      prefs.remove('${_tag}_token'),
      prefs.remove('${_tag}_temp_token'),
      prefs.remove('${_tag}_refreshToken'),
      prefs.remove('${_tag}_refresh_token'),
    ]);
    return prefs.clear();
  }

  @override
  bool hasToken() {
    if (!prefs.containsKey('${_tag}_token')) {
      return false;
    } else {
      final token = prefs.getString('${_tag}_token');

      if (kDebugMode) log('AccessToken: $token');

      return token != null;
    }
  }

  @override
  Future<bool> login(String token) => prefs.setString('${_tag}_token', token);

  @override
  Future<bool> deletePin() => prefs.remove('${_tag}_pin');

  @override
  String? getPin() => prefs.getString('${_tag}_pin');

  @override
  Future<bool> setPin(String pin) => prefs.setString('${_tag}_pin', pin);

  @override
  Future<bool> setIntroShown() => prefs.setBool('${_tag}_intro', true);

  @override
  Future<bool> setBiometricAllowed(bool value) =>
      prefs.setBool('${_tag}_biometric_allowed', value);

  @override
  int getAutoLock() => prefs.getInt('${_tag}_auto_lock') ?? 120;

  @override
  Future<bool> setAutoLock(int seconds) =>
      prefs.setInt('${_tag}_auto_lock', seconds);
}
