// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:my_project/src/core/network/layers/network_connectivity.dart';
import 'package:my_project/src/core/network/results/base_response.dart';
import 'package:my_project/src/core/network/results/empty_response.dart';
import 'package:my_project/src/core/network/results/network_exception.dart';
import 'package:my_project/src/core/network/results/result.dart';
import 'package:my_project/src/core/utils/error_util.dart';

class NetworkExecuter {
  NetworkExecuter({
    required NetworkConnectivity connectivity,
  }) : _connectivity = connectivity;

  final NetworkConnectivity _connectivity;

  Future<Result<T>> execute<T extends BaseResponse?>({
    required Future<T> Function() route,
  }) async {
    if (await _connectivity.status) {
      try {
        final response = await route();

        if (response.runtimeType == EmptyResponse) {
          return Result.success(response);
        }

        if (response?.statusCode == null && (response?.isSuccess ?? true)) {
          return Result.success(response);
        }
        return Result.failure(
          NetworkException.type(
            error: _parseError(
              response ?? EmptyResponse(),
            ),
          ),
        );

        /// Dio error
      } on DioError catch (err) {
        log(
          'DioError error',
          error: err,
        );
        return _isTimeOut(err)
            ? const Result.failure(NetworkException.timeOut())
            : Result.failure(NetworkException.request(error: err));

        /// Other errors
      } on Object catch (e, s) {
        log(
          'Object error',
          error: e,
        );
        await ErrorUtil.logError(
          e,
          stackTrace: s,
          hint: '$route => ${NetworkException.type(error: e.toString())}',
        );

        return Result.failure(NetworkException.type(error: e.toString()));
      }

      /// No Internet Connection
    } else {
      log('No Internet Connection');
      return const Result.failure(NetworkException.connectivity());
    }
  }

  bool _isTimeOut(DioError err) =>
      err.type == DioErrorType.receiveTimeout ||
      err.type == DioErrorType.sendTimeout ||
      err.type == DioErrorType.connectionTimeout;

  String _parseError(BaseResponse response) {
    final message = response.message ?? 'Something went wrong!';

    return message;
  }
}
