import 'package:demo1/config/color.dart';
import 'package:demo1/widget/back_button.dart';
import 'package:demo1/widget/setting_option.dart';
import 'package:flutter/material.dart';

class TabSetting extends StatelessWidget {
  const TabSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Stack(
        children: [
          backButton(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                settingOption(
                  title: "Manage Accounts",
                ),
                settingOption(
                  title: "Tax Documents",
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
        ],
      ),
    );
  }
}
