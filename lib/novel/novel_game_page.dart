import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/novel_game_page_body.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:flutter_state_management/sentence/sentence_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../sentence/sentence_state_notifier.dart';

class NovelGamePage extends StatelessWidget {
  const NovelGamePage({@required this.storyId});

  final int storyId;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SentenceStateNotifier, SentenceState>(
      create: (context) => SentenceStateNotifier(storyId: storyId),
      child: Scaffold(
        body: Builder(builder: (_context) {
          return _context.watch<SentenceState>() == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : NovelGamePageBody(
                  storyId: storyId,
                );
        }),
      ),
    );
  }
}
