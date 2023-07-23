// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      messageId: json['message_id'] as String,
      content: json['content'] as String,
      conversationId: json['conversation_id'] as String,
      sender: json['sender'] as String,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'content': instance.content,
      'conversation_id': instance.conversationId,
      'sender': instance.sender,
      'timestamp': instance.timestamp,
    };
