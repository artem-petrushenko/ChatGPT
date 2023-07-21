import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';

part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MessageModel({
    required String id,
    required String message,
    required String senderId,
    required int timestamp,
    required String role,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  factory MessageModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return MessageModel(
      id: data!['id'] as String,
      message: data['message'] as String,
      senderId: data['sender_id'] as String,
      timestamp: data['timestamp'] as int,
      role: data['role'] as String,
    );
  }
}
