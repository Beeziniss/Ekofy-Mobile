import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    // Request permission for iOS
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: true,
      announcement: true,
      carPlay: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('User granted permission');

      // Get the token each time the application loads
      String? token = await _messaging.getToken();
      log("Firebase Messaging Token: $token");
      // Handle foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log('Received a message while in the foreground!');
        log('Message data: ${message.data}');

        if (message.notification != null) {
          log(
            'Message also contained a notification: ${message.notification}',
          );
        }
      });
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      log('User granted provisional permission');
    } else {
      AppSettings.openAppSettings();
      log('User declined or has not accepted permission');
    }
  }

  Future<String?> getDeviceToken() async {
    return await _messaging.getToken();
  }

  void isTokenRefresh() {
    _messaging.onTokenRefresh.listen((event) {
      log("Firebase Messaging Token Refreshed: $event");
      event.toString();
    });
  }

  void initLocalNotification(
    BuildContext context,
    RemoteMessage message,
  ) async {
    var androidInitilization = const AndroidInitializationSettings(
      '@drawable/logo_ekofy',
    );

    var iosInitilization = const DarwinInitializationSettings();

    var initilizationsSettings = InitializationSettings(
      android: androidInitilization,
      iOS: iosInitilization,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initilizationsSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        log('Notification Clicked: ${response.payload}');
      },
    );

    // Create the channel on the device (Android 8.0+)
    final channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }

  Future<void> showLocalNotification(RemoteMessage message) async {
    final channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );

    var androidDetails = AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: channel.description,
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    var iosDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    var generalNotificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    final int notificationId = DateTime.now().millisecondsSinceEpoch.remainder(
      100000,
    );
    await flutterLocalNotificationsPlugin.show(
      notificationId,
      message.notification!.title,
      message.notification!.body,
      generalNotificationDetails,
      payload: 'Notification Payload',
    );
  }

  void firebaseInit(BuildContext context) {
    {
      FirebaseMessaging.onMessage.listen((message) {
        if (kDebugMode) {
          print('message received: ${message.notification?.body}');
        }
        if (Platform.isAndroid) {
          initLocalNotification(context, message);
          showLocalNotification(message);
        }
      });
    }
  }
}
