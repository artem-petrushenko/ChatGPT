import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_model.freezed.dart';

part 'conversation_model.g.dart';

@freezed
class ConversationModel with _$ConversationModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ConversationModel({
    required final String conversationId,
    required final String name,
    required final List<dynamic> participants,
    required final int createdAt,
    required final int updatedAt,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);

  factory ConversationModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return ConversationModel(
      conversationId: data!['conversation_id'] as String,
      name: data['name'] as String,
      participants: data['participants'] as List<dynamic>,
      createdAt: data['created_at'] as int,
      updatedAt: data['updated_at'] as int,
    );
  }
}
