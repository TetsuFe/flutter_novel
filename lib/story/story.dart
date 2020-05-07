import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@JsonSerializable(nullable: false)
@freezed
abstract class Story with _$Story {
  factory Story({
    @required int id,
    @required String title,
    @required String summary,
    @required String thumbnailImagePath,
    @required bool isRead,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}
