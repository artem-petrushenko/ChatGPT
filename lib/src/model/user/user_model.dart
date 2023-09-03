import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserModel({
    required final int createdAt,
    required final String email,
    required final String phoneNumber,
    required final String photoUrl,
    required final String uid,
    required final int updatedAt,
    required final String username,
    required final List<dynamic> contacts
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    return UserModel(
      createdAt: data['created_at'] as int,
      email: data['email'] as String,
      phoneNumber: data['phone_number'] as String,
      photoUrl: data['photo_url'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updated_at'] as int,
      username: data['username'] as String,
      contacts: data['contacts'] as List<dynamic>,
    );
  }
}
