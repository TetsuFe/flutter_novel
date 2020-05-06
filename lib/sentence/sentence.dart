import 'package:freezed_annotation/freezed_annotation.dart';

part 'sentence.freezed.dart';

@freezed
abstract class Sentence with _$Sentence {
  factory Sentence({
    @required int storyId,
    @required String characterName,
    @required String body,
    @required String characterImagePath,
  }) = _Sentence;
}
