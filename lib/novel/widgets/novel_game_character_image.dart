import 'package:flutter/material.dart';
import 'package:flutter_state_management/novel/widgets/v_tween_animation_container.dart';
import 'package:flutter_state_management/sentence/models/sentence_collection.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

class NovelGameCharacterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentCharecterImagePath = context
        .select<SentenceCollection, String>((s) => s.currentCharecterImagePath);
    final zoomLevel = context.select<SentenceCollection, String>(
        (s) => s.currentCharecterImageEffect);
    return Center(child: Builder(
      builder: (_) {
        if (currentCharecterImagePath ==
            'assets/character_images/ypose_hokuma.png') {
          return Container(
            width: double.infinity,
            height: double.infinity,
            child: VTweenAnimationContainer(
              child: ZoomedCharacterImageContainer(
                  charecterImagePath: currentCharecterImagePath,
                  zoomLevel: zoomLevel),
            ),
          );
        }
        return ZoomedCharacterImageContainer(
          charecterImagePath: currentCharecterImagePath,
          zoomLevel: zoomLevel,
        );
      },
    ));
  }
}

mixin AdaptiveSizeWidget {
  double culcurateContainerWidth(BuildContext context);
  double culcurateContainerHeight(BuildContext context);
}

class CharacterImageContainer extends StatelessWidget
    implements AdaptiveSizeWidget {
  const CharacterImageContainer({@required this.charecterImagePath});
  final String charecterImagePath;

  @override
  double culcurateContainerWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth / 2;
  }

  @override
  double culcurateContainerHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return screenHeight / 2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: culcurateContainerWidth(context),
      height: culcurateContainerHeight(context),
      child: Image.network(
        charecterImagePath,
        fit: BoxFit.fill,
      ),
    );
  }
}

class ZoomedCharacterImageContainer extends StatelessWidget
    with AdaptiveSizeWidget {
  const ZoomedCharacterImageContainer(
      {@required this.charecterImagePath, @required this.zoomLevel});
  final String charecterImagePath;
  final String zoomLevel;

  double zoomLevelAsDouble() {
    try {
      return double.parse(zoomLevel);
    } on Exception catch (_) {
      return 1;
    }
  }

  @override
  double culcurateContainerWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth / 2 * zoomLevelAsDouble();
  }

  @override
  double culcurateContainerHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return screenHeight / 2 * zoomLevelAsDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: culcurateContainerWidth(context),
      height: culcurateContainerHeight(context),
      child: Image.network(
        charecterImagePath,
        fit: BoxFit.contain,
      ),
    );
  }
}
