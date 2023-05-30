import 'package:demo1/dashboard/budgets_tab.dart';
import 'package:demo1/dashboard/setting_tab.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';
import 'accounts_tab.dart';
import 'bills_tab.dart';
import 'overview_tab.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({Key? key}) : super(key: key);

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
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
