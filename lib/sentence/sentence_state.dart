import 'package:flutter_state_management/sentence/sentence.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sentence_state.freezed.dart';

@freezed
abstract class SentenceState with _$SentenceState {
  factory SentenceState(
      {@required List<Sentence> sentenceList,
      @required int sentenceIndex}) = _SentenceState;

  @late
  int get sentenceListLength => sentenceList.length;

  @late
  bool get isLastSentence => sentenceIndex == sentenceList.length - 1;

  @late
  String get currentSentence => sentenceList[sentenceIndex].body;
}
