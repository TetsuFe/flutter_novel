import 'package:flutter_novel/story/models/story.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class StoryStateNotifier extends StateNotifier<Story> {
  StoryStateNotifier(Story story) : super(story);

  void markAsRead() {
    state = state.copyWith(isRead: true);
  }
}

final storyStateNotifierProvider =
    StateNotifierProvider.family<StoryStateNotifier, Story>(
        (ref, story) => StoryStateNotifier(story));
