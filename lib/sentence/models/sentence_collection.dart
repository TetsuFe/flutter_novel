import 'package:flutter_novel/sentence/models/sentence.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sentence_collection.freezed.dart';

@freezed
abstract class SentenceCollection with _$SentenceCollection {
  factory SentenceCollection(
      {@required List<Sentence> sentenceList,
      @required int sentenceIndex}) = _SentenceState;

  @late
  int get sentenceListLength => sentenceList.length;

  @late
  bool get isLastSentence => sentenceIndex == sentenceList.length - 1;

  @late
  String get currentSentence => sentenceList[sentenceIndex].body;

  @late
  String get currentCharecterImagePath =>
      sentenceList[sentenceIndex].characterImagePath;

  @late
  String get currentCharecterName => sentenceList[sentenceIndex].characterName;

  @late
  String get currentCharecterImageEffect =>
      sentenceList[sentenceIndex].characterImageEffect;
}
