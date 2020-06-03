import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_state_management/story/story.dart';
import 'package:flutter_state_management/story/story_api.dart';
import 'package:flutter_state_management/story/story_details_page.dart';
import 'package:flutter_state_management/story/story_state_notifier.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class StoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('add_nend_script_1',
        (int viewId) {
      final element = ScriptElement()
        ..src = 'https://js1.nend.net/js/nendAdLoader.js'
        ..type = 'text/javascript';
      return element;
    });

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('add_nend_script_2',
        (int viewId) {
      final element = ScriptElement()
        ..text = 'var nend_params = {"media":66283,'
            '"site":338979,"spot":1003266,"type":1,"oriented":1};'
        ..type = 'text/javascript';
      return element;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('ストーリー選択'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StreamBuilder(
                stream: StoryApi().getStoryList(),
                builder: (context, AsyncSnapshot<dynamic> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final storyList = snapshot.data as List<Story>;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: storyList.length,
                    primary: true,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                          title: Text(storyList[index].title),
                          onTap: () {
                            Navigator.of(context).push<MaterialPageRoute>(
                              MaterialPageRoute(
                                builder: (context) {
                                  return MultiProvider(
                                    providers: [
                                      StateNotifierProvider<StoryStateNotifier,
                                          Story>(
                                        create: (_) => StoryStateNotifier(
                                            storyList[index]),
                                      )
                                    ],
                                    child: StoryDetailsPage(),
                                  );
                                },
                              ),
                            );
                          }),
                    ),
                  );
                }),
            Padding(
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
            ),
            const SizedBox(
              width: 0,
              height: 0,
              child: HtmlElementView(viewType: 'add_nend_script_1'),
            ),
            const SizedBox(
              width: 0,
              height: 0,
              child: HtmlElementView(viewType: 'add_nend_script_2'),
            ),
          ],
        ),
      ),
    );
  }
}
