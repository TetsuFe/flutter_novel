import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_state_management/story/story_state_notifier.dart';
import 'package:flutter_state_management/story/story.dart';

void main() {
  test('StoryStateNotifier test', () {
    final story = Story(
        id: 1,
        title: 'テスト',
        summary: 'テストです',
        thumbnailImagePath: 'assets/story/story/1/hokuma.jpg',
        isRead: false);
    final storyStateNotifier = StoryStateNotifier(story);
    storyStateNotifier.markAsRead();
    expect(
      storyStateNotifier.debugState,
      story.copyWith(isRead: true),
    );
  });
}
