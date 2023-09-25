import 'dart:convert';

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
    required final DateTime createdAt,
    required final DateTime updatedAt,
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
      createdAt: (data['created_at'] as Timestamp).toDate(),
      updatedAt: (data['updated_at'] as Timestamp).toDate(),
    );
  }

  factory ConversationModel.fromSQL(Map<String, dynamic> json) {
    return ConversationModel(
      conversationId: json['conversation_id'] as String,
      createdAt: json['created_at'] as DateTime,
      name: json['name'] as String,
      participants: List<String>.from(
          jsonDecode(json['participants'] as String) as List<dynamic>),
      updatedAt: json['updated_at'] as DateTime,
    );
  }
}
