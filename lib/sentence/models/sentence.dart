import 'package:freezed_annotation/freezed_annotation.dart';

part 'sentence.freezed.dart';
part 'sentence.g.dart';

@freezed
abstract class Sentence with _$Sentence {
  factory Sentence({
    @required String characterName,
    @required String body,
    @required String characterImagePath,
    @required String characterImageEffect,
  }) = _Sentence;

  factory Sentence.fromJson(Map<String, dynamic> json) =>
      _$SentenceFromJson(json);
}
