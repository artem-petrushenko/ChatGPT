import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:chat_gpt/src/model/user/user_model.dart';

import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider.dart';

import 'package:chat_gpt/src/data/client/cloud_firestore.dart';

class UserNetworkDataProviderImpl implements UserNetworkDataProvider {
  const UserNetworkDataProviderImpl({
    required CloudFirestore cloudFirestore,
  }) : _cloudFirestore = cloudFirestore;

  final CloudFirestore _cloudFirestore;

  @override
  Future<UserModel> getUser({
    required String uid,
  }) async {
    final collection = FirebaseFirestore.instance.collection('users');
    final snapshot = await collection.doc(uid).get();
    return UserModel.fromFirestore(snapshot);
  }

  @override
  Future<void> createUser({required User user}) async {
    final doc = FirebaseFirestore.instance.collection('users').doc(user.uid);
    await doc.set(<String, dynamic>{
      'contacts': <String>[],
      'created_at': FieldValue.serverTimestamp(),
      'email': user.email ?? '',
      'phone_number': user.phoneNumber ?? '',
      'photo_url': user.photoURL ?? '',
      'uid': user.uid,
      'updated_at': FieldValue.serverTimestamp(),
      'username': user.displayName ?? '',
    });
  }

  @override
  Future<bool> isUserInDatabase({required String uid}) async {
    final doc = await _cloudFirestore.read(
      collection: 'users',
      documentId: uid,
    );
    return doc.exists;
  }

  @override
  Future<void> addNewContact({
    required String uid,
    required String currentUID,
  }) async {
    final doc = await _cloudFirestore.read(
      collection: 'users',
      documentId: uid,
    );
    if (doc.exists) {
      await _cloudFirestore.update(
        collection: 'users',
        documentId: currentUID,
        data: {
          'contacts': FieldValue.arrayUnion(<String>[uid]),
        },
      );
    } else {
      throw Exception('Error');
    }
  }

  @override
  Future<void> removeContacts({
    required List<String> uid,
    required String currentUID,
  }) async =>
      await _cloudFirestore.update(
        collection: 'users',
        documentId: currentUID,
        data: {
          'contacts': FieldValue.arrayRemove(uid),
        },
      );

  @override
  Future<void> updateAvatar({
    required String imageUrl,
    required String uid,
  }) async =>
      await _cloudFirestore.update(
        collection: 'users',
        documentId: uid,
        data: {
          'photo_url': imageUrl,
        },
      );
}
