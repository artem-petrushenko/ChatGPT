import 'package:cloud_firestore/cloud_firestore.dart';

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
}
