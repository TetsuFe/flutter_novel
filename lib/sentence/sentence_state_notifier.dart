import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:state_notifier/state_notifier.dart';

import 'sentence.dart';

class SentenceStateNotifier extends StateNotifier<SentenceState> {
  //with LocatorMixin {
  SentenceStateNotifier()
      : super(SentenceState(sentenceIndex: 0, sentenceList: [
          Sentence(
            storyId: 1,
            body: 'こんにちは、ホクマだクマ。state_notifierを使ってみたクマ！',
            characterName: 'ホクマ',
            characterImagePath: 'assets/character_images/neutral_hokuma.png',
          ),
          Sentence(
            storyId: 1,
            body: '次回に続くクマ！',
            characterName: 'ホクマ',
            characterImagePath: 'assets/character_images/ypose_hokuma.png',
          )
        ]));

  /*
  @override
  Future<void> initState() async {
    await Future.delayed(Duration(milliseconds: 0));
    state = state.copyWith();
  }
   */

  void goToNextSentence() {
    if (!state.isLastSentence) {
      state = state.copyWith(sentenceIndex: state.sentenceIndex + 1);
    }
  }
}
