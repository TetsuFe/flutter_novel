import 'package:flutter/material.dart';
import 'package:flutter_state_management/top_page.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightGreen,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.dark,
      ),
      home: TopPage(),
    );
  }
}
