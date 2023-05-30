import 'package:demo1/dashboard/dashboard_mobile.dart';
import 'package:demo1/dashboard/dashboard_tab.dart';
import 'package:demo1/dashboard/dasshboard_web.dart';
import 'package:flutter/cupertino.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        width,
      ) {
        debugPrint("$width");
        return width.maxWidth <= 450
            ? const DashboardMobile()
            : width.maxWidth > 450 && width.maxWidth <= 800
                ? const DashboardTab()
                : const DashboardWeb();
      },
    );
  }
}
