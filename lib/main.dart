import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management/app.dart';
import 'package:flutter_state_management/story/story_api.dart';
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

  runApp(Provider(create: (_) => StoryApi(), child: RootApp()));
}
