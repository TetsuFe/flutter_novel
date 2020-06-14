import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  factory Message(
      {@required String username,
      @required String body,
      @required DateTime createdDate}) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
