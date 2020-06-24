import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/widgets/collision_animated_novel_background.dart';
import 'package:flutter_state_management/novel/widgets/novel_game_background_image.dart';
import 'package:flutter_state_management/novel/widgets/novel_game_character_image.dart';
import 'package:flutter_state_management/sentence/models/sentence_collection.dart';
import 'package:flutter_state_management/sentence/models/sentence_collection_controller.dart';
import 'package:provider/provider.dart';

class NovelGamePageBody extends StatefulWidget {
  const NovelGamePageBody({@required this.storyId});

  final int storyId;

  @override
  _NovelGamePageBodyState createState() =>
      _NovelGamePageBodyState(storyId: storyId);
}

class _NovelGamePageBodyState extends State<NovelGamePageBody> {
  _NovelGamePageBodyState({@required this.storyId});

  final int storyId;

  bool _isReadingStoryFinished = false;
  bool _isBackgroundAnimated = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      // If the widget is visible, animate to 0.0 (invisible).
      // If the widget is hidden, animate to 1.0 (fully visible).
      opacity: _isReadingStoryFinished ? 0.0 : 1.0,
      duration: const Duration(milliseconds: 500),
      onEnd: () {
        Navigator.of(context).pop();
      },
      child: Stack(
        children: [
          CollisionAnimatedNovelBackground(
            animated: _isBackgroundAnimated,
            onEnd: () {
              setState(() {
                _isBackgroundAnimated = false;
              });
            },
            child: NovelGameBackgroundImage(
                backgroundImagePath: storyId == 3
                    ? 'assets/background_images/hallway.jpg'
                    : 'assets/background_images/classroom.jpg'),
          ),
          NovelGameCharacterImage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                if (context.read<SentenceCollection>().isLastSentence) {
                  setState(() {
                    _isReadingStoryFinished = true;
                  });
                }
                if (storyId == 3 &&
                    context.read<SentenceCollection>().sentenceIndex == 1) {
                  setState(() {
                    _isBackgroundAnimated = true;
                  });
                }
                context.read<SentenceCollectionContoller>().goToNextSentence();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 64, bottom: 32, right: 64),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green[400].withAlpha(150),
                  child: Text(
                    '【${context.select<SentenceCollection, String>((s) {
                      return s.currentCharecterName;
                    })}】\n'
                    '${context.select<SentenceCollection, String>((s) {
                      return s.currentSentence;
                    })}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
