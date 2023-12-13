import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/core/network/interceptors/auth_interceptor.dart';
import 'package:my_project/src/core/network/interceptors/dio_logger_interceptor.dart';
import 'package:my_project/src/feature/auth/repository/user_repository.dart';

@sealed
class DioModule {
  DioModule._();

  /// Dio configuration
  static Dio configure(IUserRepository userRepository) {
    final dio = Dio();

    dio
      ..interceptors.addAll(
        [
          AuthInterceptor(
            userRepository: userRepository,
            dio: dio,
          ),
          if (kDebugMode) DioLoggerInterceptor(),
        ],
      )
      ..options = BaseOptions(
        contentType: Headers.jsonContentType,

        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        // connectTimeout: const Duration(minutes: 2),
        // receiveTimeout: const Duration(minutes: 2),
        validateStatus: (s) =>
            s! >= HttpStatus.ok && s <= HttpStatus.multipleChoices,
      );

    return dio;
  }
}
