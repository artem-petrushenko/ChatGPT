// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      createdAt: DateTime.parse(json['created_at'] as String),
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      photoUrl: json['photo_url'] as String,
      uid: json['uid'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      username: json['username'] as String,
      contacts: json['contacts'] as List<dynamic>,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'photo_url': instance.photoUrl,
      'uid': instance.uid,
      'updated_at': instance.updatedAt.toIso8601String(),
      'username': instance.username,
      'contacts': instance.contacts,
    };
