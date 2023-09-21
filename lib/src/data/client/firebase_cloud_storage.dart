import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseCloudStorage {
  final Reference _storageReference = FirebaseStorage.instance.ref();

  Future<String> uploadFile(File file, String storagePath) async {
    try {
      final TaskSnapshot uploadTask =
          await _storageReference.child(storagePath).putFile(file);
      return await uploadTask.ref.getDownloadURL();
    } catch (e) {
      throw Exception(e);
    }
  }
}
