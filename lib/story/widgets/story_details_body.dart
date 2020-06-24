import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/widgets/novel_game_page.dart';
import 'package:flutter_state_management/story/models/story.dart';
import 'package:flutter_state_management/story/models/story_state_notifier.dart';
import 'package:provider/provider.dart';

class StoryDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 50),
      Text(
        '${context.select<Story, String>((s) => s.title)}',
        style: Theme.of(context).textTheme.headline2,
      ),
      Row(
        children: [
          Checkbox(
            value: context.select<Story, bool>((s) => s.isRead),
            onChanged: null,
          ),
          Text(
            context.select<Story, bool>((s) => s.isRead) ? '既読' : '未読',
          ),
        ],
      ),
      Image.network(
        context.select<Story, String>((s) => s.thumbnailImagePath),
      ),
      const SizedBox(height: 50),
      Text(
        context.select<Story, String>((s) => s.summary),
      ),
      const SizedBox(height: 50),
      Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: const Text('見る'),
          color: Colors.lightGreen,
          textColor: Colors.white,
          onPressed: () {
            context.read<StoryStateNotifier>().markAsRead();
            Navigator.of(context).push<MaterialPageRoute>(
              MaterialPageRoute(
                builder: (_) {
                  return NovelGamePage(
                    storyId: context.select<Story, int>((s) => s.id),
                  );
                },
              ),
            );
          },
        ),
      ),
    ]);
  }
}
