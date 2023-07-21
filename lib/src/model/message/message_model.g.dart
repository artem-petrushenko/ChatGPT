// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      id: json['id'] as String,
      message: json['message'] as String,
      senderId: json['sender_id'] as String,
      timestamp: json['timestamp'] as int,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'sender_id': instance.senderId,
      'timestamp': instance.timestamp,
      'role': instance.role,
    };
