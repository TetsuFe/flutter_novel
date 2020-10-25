import 'package:flutter/material.dart';
import 'package:flutter_novel/story/models/story.dart';
import 'package:flutter_novel/story/models/story_api.dart';
import 'package:flutter_novel/story/story_provider.dart';
import 'package:flutter_novel/story/widgets/story_details_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryList extends ConsumerWidget {
  @override
  Widget build(BuildContext context,
      T Function<T>(ProviderBase<Object, T> provider) watch) {
    return StreamBuilder(
        stream: watch(storyApiProvider).getStoryList(),
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
                          return ProviderScope(
                            overrides: [
                              storyProvider
                                  .overrideAs((ref) => storyList[index])
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
