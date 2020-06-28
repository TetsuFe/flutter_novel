import 'package:flutter_state_management/sentence/models/sentence.dart';
import 'package:flutter_state_management/sentence/models/sentence_collection.dart';
import 'package:flutter_state_management/story/models/story_api.dart';
import 'package:meta/meta.dart';
import 'package:state_notifier/state_notifier.dart';

class SentenceCollectionContoller extends StateNotifier<SentenceCollection>
    with LocatorMixin {
  SentenceCollectionContoller({@required this.storyId}) : super(null);

  final int storyId;
  StoryApi get _apiClient => read();

  @override
  Future<void> initState() async {
    try {
      final sentenceList =
          await _apiClient.getStorySentenceList(storyId.toString());
      state = SentenceCollection(sentenceIndex: 0, sentenceList: sentenceList);
    } on Exception {
      state = SentenceCollection(sentenceIndex: 0, sentenceList: [
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
