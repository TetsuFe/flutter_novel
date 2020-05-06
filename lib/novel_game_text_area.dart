import 'package:flutter/material.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/sentence/sentence_state_notifier.dart';
import 'package:provider/provider.dart';

class NovelGageTextArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.select<SentenceState, String>((s) => s.currentSentence),
        ),
        FlatButton(
          child: Text(
            '次へ',
          ),
          onPressed: () {
            context.read<SentenceStateNotifier>().goToNextSentence();
          },
        )
      ],
    );
  }
}
