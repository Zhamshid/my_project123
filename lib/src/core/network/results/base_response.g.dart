// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'statusCode': instance.statusCode,
    };
