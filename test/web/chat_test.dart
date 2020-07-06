import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_novel/user_question_chat/models/message.dart';
import 'package:flutter_novel/user_question_chat/models/user_question_chat_api.dart';
import 'package:flutter_novel/user_question_chat/widgets/user_question_chat.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockUserQuestionChatApi extends Mock implements UserQuestionChatApi {
  MockUserQuestionChatApi({this.allMessageSnapshotData});

  final List<Message> allMessageSnapshotData;

  @override
  Stream<List<Message>> allMessageSnapshot() =>
      Stream.value(allMessageSnapshotData);
}

void main() {
  testWidgets('MessageListView widget test', (tester) async {
    final message = Message(
      username: 'testuser',
      body: 'こんにちは',
      createdDate: DateTime(2020, 1, 1),
    );
    await tester.pumpWidget(
      MaterialApp(
          home: Provider<UserQuestionChatApi>(
        child: Scaffold(body: Column(children: [MessageListView()])),
        create: (context) =>
            MockUserQuestionChatApi(allMessageSnapshotData: [message]),
      )),
    );
    await tester.pump(Duration.zero);
    expect(find.byType(MessageListView), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(MessageBubble), findsOneWidget);
    expect(find.text(message.username), findsOneWidget);
    expect(find.text(message.body), findsOneWidget);
    expect(find.text(message.createdDate.toIso8601String()), findsOneWidget);
  });
}
