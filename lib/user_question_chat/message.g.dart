// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    username: json['username'] as String,
    body: json['body'] as String,
    createdDate:
        json['createdDate'] == null ? null : json['createdDate'] as DateTime,
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'username': instance.username,
      'body': instance.body,
      'createdDate': instance.createdDate,
    };
