// // import 'package:demo1/utills/router.dart';
// import 'package:demo1/demo.dart';
import 'package:flutter/material.dart';

import 'dashboard/dashboard_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      // routes: AppRouter.routers,
      // initialRoute: AppRouter.initialRoute,
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    ),
  );
}
