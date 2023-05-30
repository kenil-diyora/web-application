import 'package:demo1/dashboard/dashboard_screen.dart';
import 'package:demo1/dashboard/dashboard_tab.dart';
import 'package:flutter/cupertino.dart';

class AppRouter {
  static const String initialRoute = "/";

  static Map<String, Widget Function(BuildContext)> routers = {
    "/": (context) => const DashboardPage(),
    "/home-screen": (context) => const DashboardTab(),
  };
}
