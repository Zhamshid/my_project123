// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException implements Exception {
  const NetworkException._() : super();

  /// Called when [DioException] occurred
  const factory NetworkException.request({required DioException error}) = _ResponseError;

  /// General errors
  const factory NetworkException.type({String? error}) = _DecodingError;

  /// No internet connection error
  const factory NetworkException.connectivity({
    @Default('No internet connection!') String message,
  }) = _Connectivity;

  /// Request timed out
  const factory NetworkException.timeOut({
    @Default('Request time out!') String message,
  }) = _TimeOut;

  /// Error message
  String? get msg => when<String?>(
        type: (String? error) => error,
        connectivity: (String message) => message,
        timeOut: (String message) => message,
        request: _parseDioError,
      );

  /// Returning messages depending status code
  String _parseDioError(DioError error) {
    final message = error.response?.data['message'] as String?;

    if (message == null || message.isEmpty) {
      final internal = error.response?.data['message'] as String?;

      if (internal == null || internal.isEmpty) {
        return 'Error!';
      }

      return internal;
    }
    return message;
  }
}
