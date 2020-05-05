import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';

@freezed
abstract class Story with _$Story {
  factory Story(
      {@required int id,
      @required String title,
      @required String summary,
      @required String thumbnailImagePath}) = _Story;
}
