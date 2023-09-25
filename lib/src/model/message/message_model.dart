import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';

part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MessageModel({
    required final String messageId,
    required final String content,
    required final String conversationId,
    required final String sender,
    required final DateTime timestamp,
    final String? senderName,
    final String? photoUrl,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  factory MessageModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    return MessageModel(
      messageId: data['message_id'] as String,
      content: data['content'] as String,
      conversationId: data['conversation_id'] as String,
      sender: data['sender'] as String,
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }
}
