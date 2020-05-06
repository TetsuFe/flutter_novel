import 'package:flutter/material.dart';
import 'package:flutter_state_management/story/story_details_body.dart';

class StoryDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('物語の詳細'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: windowWidth > 800
              ? EdgeInsets.symmetric(horizontal: 140)
              : EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              Center(
                child: StoryDetailsBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
