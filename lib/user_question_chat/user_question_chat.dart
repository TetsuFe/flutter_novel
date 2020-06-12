import 'package:flutter/material.dart';
import 'package:flutter_state_management/common/standard_selectable_autolink_text.dart';
import 'package:flutter_state_management/user_question_chat/message.dart';
import 'package:flutter_state_management/user_question_chat/user_question_chat_api.dart';
import 'package:flutter_state_management/user_question_chat/user_question_chat_form.dart';
import 'package:intl/date_symbol_data_local.dart';

class UserQuestionChatArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text(
                  '開発者への質問はこちら',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                MessageListView(),
                ChatForm(),
              ],
            ),
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }
}

class MessageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: UserQuestionChatApi().allMessageSnapshot(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('エラーが発生しています');
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final messages = snapshot.data as List<Message>;
        return ListView.builder(
            reverse: true,
            itemCount: messages.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, int index) {
              return MessageBubble(message: messages[index]);
            });
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  const MessageBubble({@required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ja_JP');
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 8, bottom: 8),
      child: ListTile(
        leading: Text(message.username),
        title: Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: .5,
                    spreadRadius: 1,
                    color: Colors.black.withOpacity(.12))
              ],
              color: Colors.lightGreen,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: StandardSelectableAutoLinkText(message.body)),
        subtitle: Text(
          message.createdDate.toIso8601String(),
        ),
      ),
    );
  }
}
