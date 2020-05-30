// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sentence _$_$_SentenceFromJson(Map<String, dynamic> json) {
  return _$_Sentence(
    characterName: json['characterName'] as String,
    body: json['body'] as String,
    characterImagePath: json['characterImagePath'] as String,
    characterImageEffect: json['characterImageEffect'] as String,
  );
}

Map<String, dynamic> _$_$_SentenceToJson(_$_Sentence instance) =>
    <String, dynamic>{
      'characterName': instance.characterName,
      'body': instance.body,
      'characterImagePath': instance.characterImagePath,
      'characterImageEffect': instance.characterImageEffect,
    };
