// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$_$_StoryFromJson(Map<String, dynamic> json) {
  return _$_Story(
    id: json['id'] as int,
    title: json['title'] as String,
    summary: json['summary'] as String,
    thumbnailImagePath: json['thumbnailImagePath'] as String,
    isRead: json['isRead'] as bool,
  );
}

Map<String, dynamic> _$_$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'thumbnailImagePath': instance.thumbnailImagePath,
      'isRead': instance.isRead,
    };
