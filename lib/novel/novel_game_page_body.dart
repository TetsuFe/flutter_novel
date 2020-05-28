import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/collision_animated_novel_background.dart';
import 'package:flutter_state_management/novel/v_tween_animation_container.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/sentence/sentence_state_notifier.dart';
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
            child: Image.network(
              'assets/background_images/classroom.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(child: Builder(
            builder: (_) {
              final currentCharecterImagePath =
                  context.select<SentenceState, String>(
                      (s) => s.currentCharecterImagePath);
              if (currentCharecterImagePath ==
                  'assets/character_images/ypose_hokuma.png') {
                return Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: VTweetAnimationContainer(
                        child: Container(
                            width: MediaQuery.of(context).size.height > 600
                                ? 400
                                : 240,
                            height: MediaQuery.of(context).size.height > 600
                                ? 400
                                : 240,
                            child: Image.network(currentCharecterImagePath))));
              }
              return Container(
                  width: MediaQuery.of(context).size.height > 600 ? 400 : 240,
                  height: MediaQuery.of(context).size.height > 600 ? 400 : 240,
                  child: Image.network(currentCharecterImagePath));
            },
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                if (context.read<SentenceState>().isLastSentence) {
                  setState(() {
                    _isReadingStoryFinished = true;
                  });
                }
                if (storyId == 3 &&
                    context.read<SentenceState>().sentenceIndex == 1) {
                  setState(() {
                    _isBackgroundAnimated = true;
                  });
                }
                context.read<SentenceStateNotifier>().goToNextSentence();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 64, bottom: 32, right: 64),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green[400].withAlpha(150),
                  child: Text(
                    '【${context.select<SentenceState, String>((s) {
                      return s.currentCharecterName;
                    })}】\n'
                    '${context.select<SentenceState, String>((s) {
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
