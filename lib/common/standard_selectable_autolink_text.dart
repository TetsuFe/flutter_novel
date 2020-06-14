import 'package:flutter/material.dart';
import 'package:selectable_autolink_text/selectable_autolink_text.dart';
import 'package:url_launcher/url_launcher.dart';

class StandardSelectableAutoLinkText extends StatelessWidget {
  const StandardSelectableAutoLinkText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SelectableAutoLinkText(
      text,
      linkStyle: const TextStyle(color: Colors.blue),
      onTransformDisplayLink: AutoLinkUtils.shrinkUrl,
      onTap: (url) async {
        if (await canLaunch(url)) {
          launch(url);
        }
      },
    );
  }
}
