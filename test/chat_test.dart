import 'package:flutter_state_management/user_question_chat/models/message.dart';
import 'package:flutter_state_management/user_question_chat/models/user_question_chat_api.dart';
import 'package:flutter_state_management/user_question_chat/widgets/user_question_chat.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockUserQuestionChatApi extends Mock implements UserQuestionChatApi {
  Stream<List<Message>> allMessageSnapshot() {
    // return Stream() // Streamの初期化の方法を調べる
  }
}

void main() {
  testWidgets('chat list displaying widget test', (tester) async {
    tester.pumpWidget(
      Provider<UserQuestionChatApi>(
        child: MessageListView(),
        create: (context) => MockUserQuestionChatApi(),
      ),
    );
  });
}
