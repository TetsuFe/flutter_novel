import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CollisionAnimatedNovelBackground extends StatelessWidget {
  const CollisionAnimatedNovelBackground(
      {@required this.child, @required this.animated, @required this.onEnd});

  final Widget child;
  final bool animated;
  final VoidCallback onEnd;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      top: animated ? 100 : 0,
      left: animated ? 20 : 0,
      duration: const Duration(milliseconds: 100),
      child: child,
      onEnd: onEnd,
    );
  }
}
