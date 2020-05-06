import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/novel_game_page_body.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/sentence/sentence_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import '../sentence/sentence_state_notifier.dart';

class NovelGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SentenceStateNotifier, SentenceState>(
      create: (context) => SentenceStateNotifier(),
      child: Scaffold(
        body: NovelGamePageBody(),
      ),
    );
  }
}
