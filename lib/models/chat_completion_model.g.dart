// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCompletionModel _$$_ChatCompletionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompletionModel(
      json['id'] as String?,
      json['object'] as String?,
      json['created'] as int?,
      (json['choices'] as List<dynamic>?)
          ?.map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatCompletionModelToJson(
        _$_ChatCompletionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'choices': instance.choices?.map((e) => e.toJson()).toList(),
      'usage': instance.usage?.toJson(),
    };

_$_Choices _$$_ChoicesFromJson(Map<String, dynamic> json) => _$_Choices(
      json['index'] as int?,
      json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      json['finish_reason'] as String?,
    );

Map<String, dynamic> _$$_ChoicesToJson(_$_Choices instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message?.toJson(),
      'finish_reason': instance.finishReason,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      json['role'] as String?,
      json['content'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

_$_Usage _$$_UsageFromJson(Map<String, dynamic> json) => _$_Usage(
      json['prompt_tokens'] as int?,
      json['completion_tokens'] as int?,
      json['total_tokens'] as int?,
    );

Map<String, dynamic> _$$_UsageToJson(_$_Usage instance) => <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
