// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      createdAt: json['created_at'] as int,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      photoUrl: json['photo_url'] as String,
      uid: json['uid'] as String,
      updatedAt: json['updated_at'] as int,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'photo_url': instance.photoUrl,
      'uid': instance.uid,
      'updated_at': instance.updatedAt,
      'username': instance.username,
    };
