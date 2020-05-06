import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class VTweetAnimationContainer extends StatefulWidget {
  final Widget child;

  VTweetAnimationContainer({@required this.child});

  @override
  _VTweetAnimationContainerState createState() =>
      _VTweetAnimationContainerState(child: child);
}

class _VTweetAnimationContainerState extends State<VTweetAnimationContainer>
    with TickerProviderStateMixin {
  final Widget child;
  AnimationController controller;
  AnimationController controller2;
  Animation<Alignment> animation;
  Animation<Alignment> animation2;
  final tween1 =
      AlignmentTween(begin: Alignment.center, end: Alignment.topRight);
  final tween2 =
      AlignmentTween(begin: Alignment.center, end: Alignment.topLeft);

  _VTweetAnimationContainerState({@required this.child});

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation = tween1.animate(controller)
      ..addListener(() {
        setState(() {});
      });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse().whenComplete(() {
          animation = tween2.animate(controller2)
            ..addListener(() {
              setState(() {});
            });
          animation.addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              controller2.reverse();
            }
          });
          controller2.forward();
        });
      }
    });
    controller.forward();

    controller2 = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AlignTransition(alignment: animation, child: child);
  }
}
