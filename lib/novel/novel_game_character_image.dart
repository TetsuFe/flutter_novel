import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/v_tween_animation_container.dart';
import 'package:flutter_state_management/sentence/sentence_state.dart';
import 'package:meta/meta.dart';
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
              child: CharacterImageContainer(
                  charecterImagePath: currentCharecterImagePath),
            ),
          );
        }
        return CharacterImageContainer(
            charecterImagePath: currentCharecterImagePath);
      },
    ));
  }
}

class CharacterImageContainer extends StatelessWidget {
  const CharacterImageContainer({@required this.charecterImagePath});
  final String charecterImagePath;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth / 2,
      height: screenHeight / 2,
      child: Image.network(charecterImagePath),
    );
  }
}
