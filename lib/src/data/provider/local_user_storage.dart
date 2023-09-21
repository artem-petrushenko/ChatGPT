import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class LocalUserStorage {
  Future<List<File>> getLatestImages() async {
    final PermissionStatus permissionStatus =
        await Permission.storage.request();

    if (permissionStatus != PermissionStatus.granted) {
      throw Exception('Необходимо предоставить разрешение на доступ к файлам.');
    }

    try {
      final Directory imagesDirectory =
          Directory('/storage/emulated/0/DCIM/Camera');
      final List<FileSystemEntity> files = imagesDirectory.listSync();
      final List<File> imageFiles = [];
      files.sort(
          (a, b) => b.statSync().modified.compareTo(a.statSync().modified));
      for (final file in files) {
        if (file is File && imageFiles.length < 20) {
          imageFiles.add(file);
        }
      }

      return imageFiles;
    } catch (error) {
      throw Exception('$error');
    }
  }
}
