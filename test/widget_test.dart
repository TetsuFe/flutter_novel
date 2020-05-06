import 'package:flutter/material.dart';
import 'package:flutter_state_management/story/story_details_body.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_state_management/story/story_state_notifier.dart';
import 'package:flutter_state_management/story/story.dart';

void main() {
  testWidgets('marks as read a story when open novel game page',
      (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(
        StateNotifierProvider<StoryStateNotifier, Story>(
          child: MaterialApp(home: Scaffold(body: StoryDetailsBody())),
          create: (_) => StoryStateNotifier(
            Story(
                id: 1,
                isRead: false,
                thumbnailImagePath: '../assets/story/story/1/hokuma.jpg',
                title: '',
                summary: ''),
          ),
        ),
      );

      expect(tester.widget<Checkbox>(find.byType(Checkbox)).value, false);
      expect(find.text('未読'), findsOneWidget);

      await tester.tap(find.byType(FlatButton));
      await tester.pumpAndSettle();

      await tester.pageBack();
      await tester.pumpAndSettle();

      expect(tester.widget<Checkbox>(find.byType(Checkbox)).value, true);
      expect(find.text('既読'), findsOneWidget);
    });
  });
}
