import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/theme.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'src/utils/notif.dart';
import 'src/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  runApp(
    MyApp(
      routes: AppRoutes(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRoutes routes;
  const MyApp({super.key, required this.routes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(),
      title: "GazaKit",
      onGenerateRoute: routes.onGenerateRoute,
    );
  }
}
