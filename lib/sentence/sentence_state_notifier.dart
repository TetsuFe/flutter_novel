import 'package:flutter_state_management/sentence/sentence.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/story/story_api.dart';
import 'package:meta/meta.dart';
import 'package:state_notifier/state_notifier.dart';

class SentenceStateNotifier extends StateNotifier<SentenceState>
    with LocatorMixin {
  SentenceStateNotifier({@required this.storyId}) : super(null);

  final int storyId;

  @override
  Future<void> initState() async {
    try {
      final sentenceList =
          await StoryApi().getStorySentenceList(storyId.toString());
      state = SentenceState(sentenceIndex: 0, sentenceList: sentenceList);
    } on Exception {
      state = SentenceState(sentenceIndex: 0, sentenceList: [
        Sentence(
          characterName: 'ホクマ',
          body: 'state_notifierとfreezedを使ったサンプルを書いたクマ！',
          characterImagePath: 'assets/character_images/neutral_hokuma.png',
          characterImageEffect: '',
        ),
        Sentence(
          characterName: 'ホクマ',
          body: 'なぜかバグで動かないクマ・・',
          characterImagePath: 'assets/character_images/neutral_hokuma.png',
          characterImageEffect: '',
        ),
        Sentence(
          characterName: 'ホクマ',
          body: '近日中にアップデートするクマ！',
          characterImagePath: 'assets/character_images/ypose_hokuma.png',
          characterImageEffect: '',
        )
      ]);
    }
  }

  void goToNextSentence() {
    if (!state.isLastSentence) {
      state = state.copyWith(sentenceIndex: state.sentenceIndex + 1);
    }
  }
}
