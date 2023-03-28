// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelsModel _$$_ModelsModelFromJson(Map<String, dynamic> json) =>
    _$_ModelsModel(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['object'] as String?,
    );

Map<String, dynamic> _$$_ModelsModelToJson(_$_ModelsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'object': instance.object,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['id'] as String?,
      json['object'] as String?,
      json['owned_by'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'owned_by': instance.ownedBy,
    };
