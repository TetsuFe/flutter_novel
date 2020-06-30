import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class VTweenAnimationContainer extends StatefulWidget {
  const VTweenAnimationContainer({@required this.child});

  final Widget child;

  @override
  _VTweenAnimationContainerState createState() =>
      _VTweenAnimationContainerState(child: child);
}

class _VTweenAnimationContainerState extends State<VTweenAnimationContainer>
    with TickerProviderStateMixin {
  _VTweenAnimationContainerState({@required this.child});

  final Widget child;
  AnimationController controller;
  AnimationController controller2;
  Animation<Alignment> animation;
  Animation<Alignment> animation2;
  final _tween1 =
      AlignmentTween(begin: Alignment.center, end: Alignment.topLeft);
  final _tween2 =
      AlignmentTween(begin: Alignment.center, end: Alignment.topRight);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation = _tween1.animate(controller)
      ..addListener(() {
        setState(() {});
      });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse().whenComplete(() {
          animation = _tween2.animate(controller2)
            ..addListener(() {
              setState(() {});
            })
            ..addStatusListener((status) {
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

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    controller2.dispose();
  }
}
