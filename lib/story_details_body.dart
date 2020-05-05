import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management/story.dart';
import 'package:flutter_state_management/novel_game_page.dart';

class StoryDetailsBody extends StatelessWidget {
  StoryDetailsBody({@required this.story});

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 50),
      Text(
        '${story.title}',
        style: Theme.of(context).textTheme.headline2,
      ),
      SizedBox(height: 50),
      Image.network(story.thumbnailImagePath),
      SizedBox(height: 50),
      Text(story.summary),
      SizedBox(height: 50),
      Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text('見る'),
          color: Colors.lightGreen,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return NovelGamePage();
                },
              ),
            );
          },
        ),
      ),
    ]);
  }
}
