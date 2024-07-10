import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class NotificationServices {

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void requestNotificationPermission() async
  {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if(settings.authorizationStatus == AuthorizationStatus.authorized)
      {
        debugPrint("user  granted permission");
      }else if(settings.authorizationStatus == AuthorizationStatus.authorized)
        {
          debugPrint("user granted provisional permsion");
        }
    else
      {
        debugPrint("user denied permsion");
      }
  }
}