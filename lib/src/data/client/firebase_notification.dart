import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotification {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging.getToken();
    initPushNotification();
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
  }

  Future<void> initPushNotification() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
