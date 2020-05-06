import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/v_tween_animation_container.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/sentence/sentence_state_notifier.dart';
import 'package:provider/provider.dart';

class NovelGamePageBody extends StatefulWidget {
  @override
  _NovelGamePageBodyState createState() => _NovelGamePageBodyState();
}

class _NovelGamePageBodyState extends State<NovelGamePageBody> {
  bool _isReadingStoryFinished = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      // If the widget is visible, animate to 0.0 (invisible).
      // If the widget is hidden, animate to 1.0 (fully visible).
      opacity: _isReadingStoryFinished ? 0.0 : 1.0,
      duration: Duration(milliseconds: 500),
      onEnd: () {
        Navigator.of(context).pop();
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              'https://userdisk.webry.biglobe.ne.jp/012/472/52/N000/000/000/BG26a_80.jpg',
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
                  return;
                }
                context.read<SentenceStateNotifier>().goToNextSentence();
              },
              child: Padding(
                padding: EdgeInsets.only(left: 64, bottom: 32, right: 64),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green[400].withAlpha(150),
                  child: Text(
                    "【${context.select<SentenceState, String>((s) => s.currentCharecterName)}】\n"
                    "${context.select<SentenceState, String>((s) => s.currentSentence)}",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
