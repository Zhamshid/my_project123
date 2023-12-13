import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/core/network/results/base_response.dart';

part 'empty_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class EmptyResponse extends BaseResponse {
  EmptyResponse({
    super.message,
    super.statusCode,
    super.isSuccess,
  });

  factory EmptyResponse.fromJson(Map<String, dynamic> json) =>
      _$EmptyResponseFromJson(json);
}
