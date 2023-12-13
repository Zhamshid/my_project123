// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empty_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmptyResponse _$EmptyResponseFromJson(Map<String, dynamic> json) =>
    EmptyResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$EmptyResponseToJson(EmptyResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'statusCode': instance.statusCode,
    };
