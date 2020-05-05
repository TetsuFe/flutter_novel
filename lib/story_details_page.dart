import 'package:flutter/material.dart';
import 'package:flutter_state_management/story.dart';
import 'package:flutter_state_management/story_details_body.dart';

class StoryDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final story = Story(
        id: 1,
        title: 'chapter1',
        summary: 'テストストーリーです',
        thumbnailImagePath: 'web/assets/story/1/hokuma.jpg');

    return Scaffold(
      appBar: AppBar(
        title: Text('物語の詳細'),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 200),
          child: Center(child: StoryDetailsBody(story: story))),
    );
  }
}
