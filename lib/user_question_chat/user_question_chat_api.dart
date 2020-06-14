import 'dart:async';

import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/firestore.dart';
import 'package:flutter_state_management/user_question_chat/message.dart';

class UserQuestionChatApi {
  Future<bool> post({String username, String body}) async {
    try {
      await fb.firestore().collection('chat_messages').add(
              Map<String, dynamic>.from({
            'username': username,
            'body': body,
            'createdDate': FieldValue.serverTimestamp()
          }));
      return true;
    } on Exception catch (_) {
      // throw Exception('なんらかのエラーが発生しました');
      return false;
    }
  }

  Stream<List<Message>> allMessageSnapshot() {
    try {
      final data = fb
          .firestore()
          .collection('chat_messages')
          .onSnapshot
          .map((event) => event.docs.map((e) {
                return Message.fromJson(e.data());
              }).toList());
      return data;
    } on Exception catch (_) {
      throw Exception('なんらかのエラーが発生しました');
    }
  }
}
