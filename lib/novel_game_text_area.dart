import 'package:flutter/material.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/sentence/sentence_state_notifier.dart';
import 'package:provider/provider.dart';

class NovelGageTextArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Image.network(
              'https://userdisk.webry.biglobe.ne.jp/012/472/52/N000/000/000/BG26a_80.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {
                context.read<SentenceStateNotifier>().goToNextSentence();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 64),
                child: Container(
                  width: double.infinity,
                  color: Colors.green[400],
                  child: Text(
                    context.select<SentenceState, String>(
                        (s) => s.currentSentence),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
