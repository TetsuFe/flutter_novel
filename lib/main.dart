import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management/app.dart';
import 'package:flutter_state_management/story/models/story_api.dart';
import 'package:flutter_state_management/user_question_chat/models/user_question_chat_api.dart';
import 'package:provider/provider.dart';

void main() {
  final firebaseApp = initializeApp(
      apiKey: 'AIzaSyBVJkZAWXjSbrHvl8Hqum2Nv8VtLehR5kU',
      authDomain: 'state-notifier-sample6.firebaseapp.com',
      databaseURL: 'https://state-notifier-sample6.firebaseio.com',
      projectId: 'state-notifier-sample6',
      storageBucket: 'state-notifier-sample6.appspot.com',
      messagingSenderId: '134557014561',
      appId: '1:134557014561:web:1b129b74e1d7781a90a160',
      measurementId: 'G-B1DLNXQ4HN');

  analytics(firebaseApp);

  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => StoryApi(),
        ),
        Provider(
          create: (_) => UserQuestionChatApi(),
        ),
      ],
      child: RootApp(),
    ),
  );
}
