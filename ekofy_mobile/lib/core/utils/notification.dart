import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> requestNotificationPermission() async {
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
          log('Message also contained a notification: ${message.notification}');
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

  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> localNotificationInit() async {
    const androidInit = AndroidInitializationSettings('ekofy_logo');
    const iosInit = DarwinInitializationSettings();

    const settings = InitializationSettings(android: androidInit, iOS: iosInit);

    await flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        log('Notification Clicked: ${response.payload}');
      },
    );

    // Only create channel ONCE (Android 8.0+)
    const channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'Used for important notifications',
      importance: Importance.max,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }

  static Future<void> show(RemoteMessage message) async {
    final notification = message.notification;
    final android = notification?.android;
    final imageUrl = android?.imageUrl ?? notification?.apple?.imageUrl;

    BigPictureStyleInformation? bigPictureStyle;
    final dio = Dio();

    if (imageUrl != null) {
      try {
        final response = await dio.get<Uint8List>(
          imageUrl,
          options: Options(responseType: ResponseType.bytes),
        );

        final imageBytes = response.data!;
        final bigPicture = ByteArrayAndroidBitmap(imageBytes);

        bigPictureStyle = BigPictureStyleInformation(
          bigPicture,
          contentTitle: notification?.title,
          summaryText: notification?.body,
        );
      } catch (e) {
        log("Failed to load image: $e");
      }
    }

    final androidDetails = AndroidNotificationDetails(
      message.notification?.android?.channelId ?? 'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
      priority: Priority.high,
      styleInformation: bigPictureStyle,
      icon: 'ekofy_logo',
      largeIcon: bigPictureStyle == null
          ? const DrawableResourceAndroidBitmap('ekofy_logo')
          : null,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    final details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    final id = DateTime.now().millisecondsSinceEpoch.remainder(100000);
    await flutterLocalNotificationsPlugin.show(
      id,
      notification?.title,
      notification?.body,
      details,
      payload: 'Notification Payload',
    );
  }

  static void registerForegroundHandler() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (Platform.isAndroid || Platform.isIOS) {
        show(message);
      }
    });
  }
}
