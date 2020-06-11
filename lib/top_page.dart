import 'package:flutter/material.dart';
import 'package:flutter_state_management/story_list_page.dart';
import 'package:url_launcher/url_launcher.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ストーリー選択'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StoryList(),
            MyGithubLink(),
          ],
        ),
      ),
    );
  }
}

class MyGithubLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: GestureDetector(
        onTap: () {
          launch('https://github.com/TetsuFe/flutter_novel/');
        },
        child: const Text(
          'GitHubリポジトリはこちら',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
