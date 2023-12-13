import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:my_project/src/feature/auth/repository/user_repository.dart';

class AuthInterceptor extends InterceptorsWrapper {
  AuthInterceptor({
    required this.userRepository,
    required this.dio,
  });

  final IUserRepository userRepository;
  final Dio dio;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({'Authorization': 'Bearer ${userRepository.token}'});
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    log('onResponse ${response.statusCode}');

    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
