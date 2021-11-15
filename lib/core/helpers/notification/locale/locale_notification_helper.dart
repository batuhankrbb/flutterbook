import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocaleNotificationHelper {
  LocaleNotificationHelper._();

  static final shared = LocaleNotificationHelper._();

  final AndroidNotificationDetails _androidNotificationDetails =
      const AndroidNotificationDetails("1", 'template app', 'template notification',
          importance: Importance.max,
          showProgress: true,
          priority: Priority.max,
          channelShowBadge: true,
          playSound: true,
          showWhen: false);

  final IOSNotificationDetails _iosNotificationDetails = const IOSNotificationDetails(
      presentSound: true, presentAlert: true, presentBadge: true);

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initializeNotification({String? andoridIcon}) async {
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('app_icon');

    var initializationSettingsIOS = const IOSInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: _onSelectNotification);
  }

  Future<void> _onSelectNotification(String? payload) async {
    print("notification has been selected $payload");
  }

  void showNotification(
      {int? channelID,
      required String title,
      required String description,
      required String payLoad}) async {
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: _androidNotificationDetails, iOS: _iosNotificationDetails);
    await _flutterLocalNotificationsPlugin.show(
        channelID ?? 1, title, description, platformChannelSpecifics,
        payload: payLoad);
  }
}
