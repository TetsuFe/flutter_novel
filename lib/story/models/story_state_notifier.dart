import 'package:flutter_novel/story/models/story.dart';
import 'package:state_notifier/state_notifier.dart';

class StoryStateNotifier extends StateNotifier<Story> {
  StoryStateNotifier(Story story) : super(story);

  void markAsRead() {
    state = state.copyWith(isRead: true);
  }
}
