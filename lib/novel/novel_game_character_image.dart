import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/v_tween_animation_container.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:provider/provider.dart';

class NovelGameCharacterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Builder(
      builder: (_) {
        final currentCharecterImagePath = context
            .select<SentenceState, String>((s) => s.currentCharecterImagePath);
        if (currentCharecterImagePath ==
            'assets/character_images/ypose_hokuma.png') {
          return Container(
              width: double.infinity,
              height: double.infinity,
              child: VTweetAnimationContainer(
                  child: Container(
                      width:
                          MediaQuery.of(context).size.height > 600 ? 400 : 240,
                      height:
                          MediaQuery.of(context).size.height > 600 ? 400 : 240,
                      child: Image.network(currentCharecterImagePath))));
        }
        return Container(
            width: MediaQuery.of(context).size.height > 600 ? 400 : 240,
            height: MediaQuery.of(context).size.height > 600 ? 400 : 240,
            child: Image.network(currentCharecterImagePath));
      },
    ));
  }
}
