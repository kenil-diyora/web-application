import 'package:demo1/dashboard/accounts_tab.dart';
import 'package:demo1/dashboard/bills_tab.dart';
import 'package:demo1/dashboard/budgets_tab.dart';
import 'package:demo1/dashboard/setting_tab.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';
import 'overview_tab.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({Key? key}) : super(key: key);

  @override
  State<DashboardMobile> createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: ColorConst.backGround,
        appBar: TabBar(
          indicatorColor: ColorConst.white,
          tabs: [
            Tab(
              icon: Icon(
                Icons.pie_chart,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.attach_money,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.money_off,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.table_chart,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            TabOverView(),
            TabAccounts(),
            TabBills(),
            TabBudgets(),
            TabSetting(),
          ],
        ),
      ),
    );
  }
}
