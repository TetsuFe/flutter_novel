import 'package:flutter_state_management/sentence/sentence.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/story/story_api.dart';
import 'package:meta/meta.dart';
import 'package:state_notifier/state_notifier.dart';

class SentenceStateNotifier extends StateNotifier<SentenceState>
    with LocatorMixin {
  SentenceStateNotifier({@required this.storyId})
      : super(SentenceState(sentenceIndex: 0, sentenceList: [
          Sentence(
              storyId: 1, characterName: '', body: '', characterImagePath: '')
        ]));

  final int storyId;

  @override
  Future<void> initState() async {
    final storySentenceList =
        await read<StoryApi>().getStorySentenceList(storyId.toString());
    state = state.copyWith(sentenceList: storySentenceList);
  }

  void goToNextSentence() {
    if (!state.isLastSentence) {
      state = state.copyWith(sentenceIndex: state.sentenceIndex + 1);
    }
  }
}
