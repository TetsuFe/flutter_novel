import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel_game_text_area.dart';
import 'package:flutter_state_management/sentence_state.dart';
import 'package:flutter_state_management/sentence_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'sentence_state_notifier.dart';

class NovelGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SentenceStateNotifier, SentenceState>(
      create: (context) => SentenceStateNotifier(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('ノベルゲームページ'),
        ),
        body: NovelGageTextArea(),
      ),
    );
  }
}
