import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';

bool isFlutterLocalNotificationsInitialized = false;

class LocalNotifications {
  LocalNotifications._();
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  ///
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_channel',
    'High Importance Notification',
    description: "This channel is for important notification",
    importance: Importance.max,
  );
  static LocalNotifications instance = LocalNotifications._();

  ///
  Future<void> showLocalNotification({
    String? title,
    String? body,
  }) async {
    ////Set the settings for various platform
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );

    Logger.logInfo("Notification title: notification $title");
    Logger.logInfo("Notifications body : $body");
    await requestPermissionsAndCreateNotification();
    flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          icon: '@drawable/word_wise_logo',
          color: WColors.primaryColor,
          channelDescription: channel.description,
        ),
        iOS: const DarwinNotificationDetails(),
      ),
    );
  }

  requestPermissionsAndCreateNotification() async {
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

//set up notifications  in background
  Future<void> setupFlutterNotifications() async {
    await requestDeviceNotificationsPermission();
    Logger.logInfo("LOCAL Notifications initialized");
    if (isFlutterLocalNotificationsInitialized) {
      return;
    }

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.

    isFlutterLocalNotificationsInitialized = true;
  }

  //function to ba called for remote based notifications
  void showFlutterNotification(String title, String body) {
    showLocalNotification(
      title: title,
      body: body,
    );
  }

//
  Future<bool> requestDeviceNotificationsPermission() async {
    PermissionStatus status = await Permission.notification.request();

    if (status.isGranted) {
      // Notification permissions granted
      // You can proceed with sending notifications
      return true;
    } else {
      return false;
    }
  }
}
