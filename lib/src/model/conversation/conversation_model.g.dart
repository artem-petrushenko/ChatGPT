// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversationModel _$$_ConversationModelFromJson(Map<String, dynamic> json) =>
    _$_ConversationModel(
      conversationId: json['conversation_id'] as String,
      name: json['name'] as String,
      participants: json['participants'] as List<dynamic>,
      createdAt: json['created_at'] as int,
      updatedAt: json['updated_at'] as int,
    );

Map<String, dynamic> _$$_ConversationModelToJson(
        _$_ConversationModel instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'name': instance.name,
      'participants': instance.participants,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
