import 'package:flutter/material.dart';
import 'package:flutter_state_management/story/story.dart';
import 'package:flutter_state_management/story/story_details_page.dart';
import 'package:flutter_state_management/story/story_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class StoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ストーリー選択'),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          primary: true,
          itemBuilder: (context, index) => ListTile(
              title: Text('chapter1'),
              onTap: () {
                final story = Story(
                    id: 1,
                    title: 'chapter1',
                    summary: 'テストストーリーです',
                    thumbnailImagePath: 'assets/story//1/hokuma.jpg',
                    isRead: false);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MultiProvider(
                        providers: [
                          StateNotifierProvider<StoryStateNotifier, Story>(
                            create: (_) => StoryStateNotifier(story),
                          )
                        ],
                        child: StoryDetailsPage(),
                      );
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
