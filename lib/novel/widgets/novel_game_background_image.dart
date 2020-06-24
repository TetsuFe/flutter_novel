import 'package:flutter/material.dart';

class NovelGameBackgroundImage extends StatelessWidget {
  const NovelGameBackgroundImage({@required this.backgroundImagePath});
  final String backgroundImagePath;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      backgroundImagePath,
      fit: BoxFit.cover,
    );
  }
}
