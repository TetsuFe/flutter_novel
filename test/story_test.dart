import 'package:flutter_state_management/story/models/story.dart';
import 'package:flutter_state_management/story/models/story_state_notifier.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('StoryStateNotifier test', () {
    final story = Story(
        id: 1,
        title: 'テスト',
        summary: 'テストです',
        thumbnailImagePath: 'assets/story/1/hokuma.jpg',
        isRead: false);
    final storyStateNotifier = StoryStateNotifier(story)..markAsRead();
    expect(
      storyStateNotifier.debugState,
      story.copyWith(isRead: true),
    );
  });
}
