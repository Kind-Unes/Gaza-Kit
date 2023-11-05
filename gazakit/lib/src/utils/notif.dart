import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('palestine');

    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {});

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    await notificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
    notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();
  }

  notificationDetails() {
    return const NotificationDetails(
        android: AndroidNotificationDetails('channelId', 'channelName',
            icon: 'palestine', importance: Importance.max),
        iOS: DarwinNotificationDetails());
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payLoad}) async {
    return notificationsPlugin.show(
        id, title, body, await notificationDetails());
  }
Future scheduleNotification(
      {int id = 0,
      String? title,
      String? body,
      String? payLoad,
      required DateTime scheduledNotificationDateTime}) async {
    return notificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(
          scheduledNotificationDateTime,
          tz.local,
        ),
        await notificationDetails(),
      
        // androidScheduleMode: AndroidScheduleMode.alarmClock,
        matchDateTimeComponents: DateTimeComponents.time,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }


  // Future<void> saveScheduledPrayerTime(
  //     DateTime prayerTime, String prayerName) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final notifications = prefs.getStringList('scheduled_prayers') ?? [];

  //   final formattedTime = DateFormat('h:mm a').format(prayerTime);
  //   final notificationData = '$prayerName - $formattedTime';

  //   notifications.add(notificationData);
  //   await prefs.setStringList('scheduled_prayers', notifications);
  // }

  // Future<List<String>> getScheduledPrayerTimes() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getStringList('scheduled_prayers') ?? [];
  // }

  // backgroundTask() async {
  //   Prayers.getPrayertimes().then((value) {
  //     final currenttime = DateTime.now();
  //     if (value.fajr!.toLocal().isAfter(currenttime)) {
  //       schedulePrayerTimeNotification(value.fajr!.toLocal(), 'Fajr');
  //       saveScheduledPrayerTime(value.fajr!.toLocal(), 'Fajr');
  //     }
  //     if (value.dhuhr!.toLocal().isAfter(currenttime)) {
  //       schedulePrayerTimeNotification(value.dhuhr!.toLocal(), 'Dhuhr');
  //       saveScheduledPrayerTime(value.dhuhr!.toLocal(), 'Dhuhr');
  //     }
  //     if (value.asr!.toLocal().isAfter(currenttime)) {
  //       schedulePrayerTimeNotification(value.asr!.toLocal(), 'Asr');
  //       saveScheduledPrayerTime(value.asr!.toLocal(), 'Asr');
  //     }
  //     if (value.maghrib!.toLocal().isAfter(currenttime)) {
  //       schedulePrayerTimeNotification(value.maghrib!.toLocal(), 'Maghrib');
  //       saveScheduledPrayerTime(value.maghrib!.toLocal(), 'Maghrib');
  //     }
  //     if (value.isha!.toLocal().isAfter(currenttime)) {
  //       schedulePrayerTimeNotification(value.isha!.toLocal(), 'Isha');
  //       saveScheduledPrayerTime(value.isha!.toLocal(), 'Isha');
  //     }
  //   });
  // }

  // Future<void> schedulePrayerTimeNotification(
  //     DateTime prayerTime, String prayerName) async {
  //   const AndroidNotificationDetails androidNotificationDetails =
  //       AndroidNotificationDetails(
  //     'main_channel',
  //     'Main Channel',
  //     channelDescription: "ashwin",
  //     importance: Importance.max,
  //     priority: Priority.max,
  //   );

  //   const NotificationDetails notificationDetails =
  //       NotificationDetails(android: androidNotificationDetails);

  //   final formattedTime = DateFormat('h:mm a').format(prayerTime);

  //   await flutterLocalNotificationsPlugin.zonedSchedule(
  //     prayerName.hashCode,
  //     'Prayer Time',
  //     'It\'s time for $prayerName prayer at $formattedTime.',
  //     tz.TZDateTime.from(prayerTime, tz.local),
  //     notificationDetails,
  //     androidAllowWhileIdle: true, // to show notification when the app is closed
  //     uiLocalNotificationDateInterpretation:
  //         UILocalNotificationDateInterpretation.absoluteTime,
  //   );
  // } 



}

