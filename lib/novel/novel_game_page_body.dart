import 'package:flutter/material.dart';
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
          Center(
              child: Image.network(context.select<SentenceState, String>(
                  (s) => s.currentCharecterImagePath))),
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
