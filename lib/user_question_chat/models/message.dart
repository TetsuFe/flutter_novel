import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'message.freezed.dart';
part 'message.g.dart';

class MessageConverter implements JsonConverter<Message, Map<String, dynamic>> {
  const MessageConverter();

  @override
  Message fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return _$_Message(
      username: json['username'] as String,
      body: json['body'] as String,
      createdDate: json['createdDate'] as DateTime,
    );
  }

  @override
  Map<String, dynamic> toJson(Message data) => data.toJson();
}

@freezed
abstract class Message with _$Message {
  factory Message(
      {@required String username,
      @required String body,
      @required DateTime createdDate}) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      messageConverter.fromJson(json);

  static const messageConverter = MessageConverter();
}
