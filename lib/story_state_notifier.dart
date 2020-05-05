import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_state_management/story.dart';

class StoryStateNotifier extends StateNotifier<Story> {
  StoryStateNotifier(Story story) : super(story);

  void markAsRead() {
    state = state.copyWith(isRead: true);
  }
}
