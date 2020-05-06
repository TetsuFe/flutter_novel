import 'package:flutter/material.dart';
import 'package:flutter_state_management/story/story.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/story/story_details_page.dart';
import 'package:flutter_state_management/story/story_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final story = Story(
        id: 1,
        title: 'chapter1',
        summary: 'テストストーリーです',
        thumbnailImagePath: 'assets/story//1/hokuma.jpg',
        isRead: false);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MultiProvider(
        providers: [
          StateNotifierProvider<StoryStateNotifier, Story>(
            create: (_) => StoryStateNotifier(story),
          )
        ],
        child: StoryDetailsPage(),
      ),
    );
  }
}
