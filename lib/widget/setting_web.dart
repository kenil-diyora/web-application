import 'package:demo1/config/color.dart';
import 'package:demo1/widget/setting_option.dart';
import 'package:flutter/material.dart';

class WebSetting extends StatelessWidget {
  const WebSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          children: [
            settingOption(
              title: "Manage Accounts",
            ),
            settingOption(
              title: "Tax Document",
            ),
            settingOption(
              title: "Passcode and Touch ID",
            ),
            settingOption(
              title: "Notification",
            ),
            settingOption(
              title: "Personal Information",
            ),
            settingOption(
              title: "Paperless Setting",
            ),
            settingOption(
              title: "Find ATMs",
            ),
            settingOption(
              title: "Help",
            ),
            settingOption(
              title: "Sign out",
            ),
          ],
        ),
      ),
    );
  }
}
