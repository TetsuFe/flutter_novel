import 'package:flutter/material.dart';
import 'package:flutter_state_management/story/story.dart';
import 'package:flutter_state_management/story/story_api.dart';
import 'package:flutter_state_management/story/story_details_page.dart';
import 'package:flutter_state_management/story/story_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class StoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: StoryApi().getStoryList(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final storyList = snapshot.data as List<Story>;
          return ListView.builder(
            shrinkWrap: true,
            itemCount: storyList.length,
            primary: true,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                  title: Text(storyList[index].title),
                  onTap: () {
                    Navigator.of(context).push<MaterialPageRoute>(
                      MaterialPageRoute(
                        builder: (context) {
                          return MultiProvider(
                            providers: [
                              StateNotifierProvider<StoryStateNotifier, Story>(
                                create: (_) =>
                                    StoryStateNotifier(storyList[index]),
                              )
                            ],
                            child: StoryDetailsPage(),
                          );
                        },
                      ),
                    );
                  }),
            ),
          );
        });
  }
}
