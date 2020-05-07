// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sentence _$_$_SentenceFromJson(Map<String, dynamic> json) {
  return _$_Sentence(
    storyId: json['storyId'] as int,
    characterName: json['characterName'] as String,
    body: json['body'] as String,
    characterImagePath: json['characterImagePath'] as String,
  );
}

Map<String, dynamic> _$_$_SentenceToJson(_$_Sentence instance) =>
    <String, dynamic>{
      'storyId': instance.storyId,
      'characterName': instance.characterName,
      'body': instance.body,
      'characterImagePath': instance.characterImagePath,
    };
