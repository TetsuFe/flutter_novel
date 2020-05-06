import 'package:flutter/material.dart';
import 'package:flutter_state_management/story_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: StoryListPage(),
    );
  }
}
