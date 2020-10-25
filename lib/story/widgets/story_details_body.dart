import 'package:flutter/material.dart';
import 'package:flutter_novel/novel/widgets/novel_game_page.dart';
import 'package:flutter_novel/story/models/story_state_notifier.dart';
import 'package:flutter_novel/story/story_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryDetailsBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context,
      T Function<T>(ProviderBase<Object, T> provider) watch) {
    final story = watch(storyProvider);
    final storyStateNotifier = watch(storyStateNotifierProvider(story));
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 50),
      Text(
        '${story.title}',
        style: Theme.of(context).textTheme.headline2,
      ),
      Row(
        children: [
          Checkbox(
            value: story.isRead,
            onChanged: null,
          ),
          Text(
            story.isRead ? '既読' : '未読',
          ),
        ],
      ),
      Image.network(
        story.thumbnailImagePath,
      ),
      const SizedBox(height: 50),
      Text(
        story.summary,
      ),
      const SizedBox(height: 50),
      Align(
          alignment: Alignment.centerRight,
          child: FlatButton(
            child: const Text('見る'),
            color: Colors.lightGreen,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push<MaterialPageRoute>(
                MaterialPageRoute(
                  builder: (_) {
                    storyStateNotifier.markAsRead();
                    return NovelGamePage(
                      storyId: story.id,
                    );
                  },
                ),
              );
            },
          )),
    ]);
  }
}
