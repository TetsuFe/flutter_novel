import 'package:flutter/material.dart';
import 'package:flutter_state_management/user_question_chat/user_question_chat_api.dart';

class ChatForm extends StatefulWidget {
  @override
  _ChatFormState createState() => _ChatFormState();
}

class _ChatFormState extends State<ChatForm> {
  final _formKey = GlobalKey<FormState>();

  final _sentenceInputController = TextEditingController();
  final _usernameInputController = TextEditingController();
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _textForm(),
      ],
    );
  }

  Widget _textForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ユーザ名',
                ),
                controller: _usernameInputController,
                maxLines: 1,
                validator: (value) {
                  if (value.isEmpty) {
                    return '1文字以上入力してください。';
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'チャット文',
                ),
                controller: _sentenceInputController,
                validator: (value) {
                  if (value.isEmpty) {
                    return '1文字以上入力してください。';
                  } else {
                    return null;
                  }
                },
                maxLines: 4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: isSubmitting
                  ? SubmittingButton()
                  : RaisedButton(
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            isSubmitting = true;
                          });
                          FocusScope.of(context).requestFocus(FocusNode());
                          final isSuccess = await submit();
                          if (isSuccess) {
                            // チャット一覧更新
                          } else {
                            const snackBar = SnackBar(
                              content: Text(
                                '送信に失敗しました。もう一度送信してください。',
                              ),
                            );
                            Scaffold.of(context).showSnackBar(snackBar);
                          }
                          setState(() {
                            isSubmitting = false;
                          });
                        }
                      },
                      child: const Text('送信'),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _usernameInputController.dispose();
    _sentenceInputController.dispose();
    super.dispose();
  }

  Future<bool> submit() async {
    final userQuestionChatApi = UserQuestionChatApi();
    final result = await userQuestionChatApi.post(
        username: _usernameInputController.text,
        body: _sentenceInputController.text);
    if (result) {
      _sentenceInputController.text = '';
      _usernameInputController.text = '';
      return true;
    }
    return false;
  }
}

class SubmittingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const RaisedButton(
        onPressed: null, child: LinearProgressIndicator());
  }
}
