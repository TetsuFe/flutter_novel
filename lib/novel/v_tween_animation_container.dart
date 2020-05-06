import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class VTweetAnimationContainer extends StatefulWidget {
  final Widget child;

  VTweetAnimationContainer({@required this.child});

  @override
  _VTweetAnimationContainerState createState() =>
      _VTweetAnimationContainerState(child: child);
}

class _VTweetAnimationContainerState extends State<VTweetAnimationContainer> {
  final Widget child;

  _VTweetAnimationContainerState({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
