import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class BaseResponse {
  BaseResponse({
    this.message,
    this.statusCode,
    this.isSuccess,
    // required this.errorCode,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);

  final String? message;

  final bool? isSuccess;

  // final int? errorCode;
  final int? statusCode;
}
