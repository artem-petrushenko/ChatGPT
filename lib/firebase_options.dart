// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCYVOYG5FG_5wUxPRlv5y5tO2vPNqy7AhM',
    appId: '1:860034645095:web:7bca767c7e54a7faa9e8c2',
    messagingSenderId: '860034645095',
    projectId: 'chatgpt-942ea',
    authDomain: 'chatgpt-942ea.firebaseapp.com',
    storageBucket: 'chatgpt-942ea.appspot.com',
    measurementId: 'G-6HNTFL8PEZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPITF9daPQaWcpvFKJrS53pO3244XNjv8',
    appId: '1:860034645095:android:b67ae16d8e7ac103a9e8c2',
    messagingSenderId: '860034645095',
    projectId: 'chatgpt-942ea',
    storageBucket: 'chatgpt-942ea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyFbMTKUnkrvj_5XUyuhwcF6KYIFk6YdM',
    appId: '1:860034645095:ios:0cd83b339d63b974a9e8c2',
    messagingSenderId: '860034645095',
    projectId: 'chatgpt-942ea',
    storageBucket: 'chatgpt-942ea.appspot.com',
    androidClientId: '860034645095-f5hqq5hrbb6keeg145sv3uf5kvbpcoea.apps.googleusercontent.com',
    iosClientId: '860034645095-r01c0s664cs4n05u1ec163uqb05pkd3m.apps.googleusercontent.com',
    iosBundleId: 'com.artempetrushenko.chatgpt.chatGpt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyFbMTKUnkrvj_5XUyuhwcF6KYIFk6YdM',
    appId: '1:860034645095:ios:0cd83b339d63b974a9e8c2',
    messagingSenderId: '860034645095',
    projectId: 'chatgpt-942ea',
    storageBucket: 'chatgpt-942ea.appspot.com',
    androidClientId: '860034645095-f5hqq5hrbb6keeg145sv3uf5kvbpcoea.apps.googleusercontent.com',
    iosClientId: '860034645095-r01c0s664cs4n05u1ec163uqb05pkd3m.apps.googleusercontent.com',
    iosBundleId: 'com.artempetrushenko.chatgpt.chatGpt',
  );
}
