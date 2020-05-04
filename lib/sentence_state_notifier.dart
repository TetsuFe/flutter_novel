import 'package:flutter_state_management/sentence_state.dart';
import 'package:state_notifier/state_notifier.dart';

import 'sentence.dart';

class SentenceStateNotifier extends StateNotifier<SentenceState> {
  //with LocatorMixin {
  SentenceStateNotifier()
      : super(SentenceState(sentenceIndex: 0, sentenceList: [
          Sentence(
            storyId: 1,
            body: 'テスト1',
            characterName: '',
            characterImagePath: '',
          ),
          Sentence(
            storyId: 1,
            body: 'テスト2',
            characterName: '',
            characterImagePath: '',
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
