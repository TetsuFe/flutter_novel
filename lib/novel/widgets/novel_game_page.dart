import 'package:flutter/material.dart';
import 'package:flutter_novel/novel/widgets/novel_game_page_body.dart';
import 'package:flutter_novel/sentence/models/sentence_collection.dart';
import 'package:flutter_novel/sentence/models/sentence_collection_controller.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../sentence/models/sentence_collection_controller.dart';

class NovelGamePage extends StatelessWidget {
  const NovelGamePage({@required this.storyId});

  final int storyId;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SentenceCollectionContoller,
        SentenceCollection>(
      create: (context) => SentenceCollectionContoller(storyId: storyId),
      child: Scaffold(
        body: Builder(builder: (_context) {
          return _context.watch<SentenceCollection>() == null
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
