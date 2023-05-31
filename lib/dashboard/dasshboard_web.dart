import 'package:demo1/dashboard/bills_web.dart';
import 'package:demo1/dashboard/budgets_web.dart';
import 'package:demo1/dashboard/overview_web.dart';
import 'package:demo1/widget/setting_web.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';
import 'accounts_web.dart';

class DashboardWeb extends StatefulWidget {
  const DashboardWeb({Key? key}) : super(key: key);

  @override
  State<DashboardWeb> createState() => _DashboardWebState();
}

class _DashboardWebState extends State<DashboardWeb> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Row(
        children: <Widget>[
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: IntrinsicHeight(
                child: NavigationRail(
                  leading: Image.asset(
                    "assets/image/logo.png",
                    color: ColorConst.primaryColor,
                    height: 150,
                    width: 150,
                  ),
                  backgroundColor: ColorConst.backGround,
                  selectedIndex: _selectedIndex,
                  groupAlignment: -1.0,
                  onDestinationSelected: (int index) {
                    setState(
                      () {
                        _selectedIndex = index;
                      },
                    );
                  },
                  labelType: NavigationRailLabelType.selected,
                  destinations: const <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.pie_chart,
                        color: ColorConst.white,
                      ),
                      label: Text(
                        'OVERVIEW',
                        style: TextStyle(
                          color: ColorConst.white,
                        ),
                      ),
                    ),
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.attach_money,
                        color: ColorConst.white,
                      ),
                      label: Text(
                        'ACCOUNTS',
                        style: TextStyle(
                          color: ColorConst.white,
                        ),
                      ),
                    ),
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.money_off,
                        color: ColorConst.white,
                      ),
                      label: Text(
                        'BILLS',
                        style: TextStyle(
                          color: ColorConst.white,
                        ),
                      ),
                    ),
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.table_chart,
                        color: ColorConst.white,
                      ),
                      label: Text(
                        'BUDGETS',
                        style: TextStyle(
                          color: ColorConst.white,
                        ),
                      ),
                    ),
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.settings,
                        color: ColorConst.white,
                      ),
                      label: Text(
                        'SETTINGS',
                        style: TextStyle(
                          color: ColorConst.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_selectedIndex == 0)
            const Expanded(
              child: WebOverview(),
            ),
          if (_selectedIndex == 1)
            const Expanded(
              child: WebAccounts(),
            ),
          if (_selectedIndex == 2)
            const Expanded(
              child: WebBills(),
            ),
          if (_selectedIndex == 3)
            const Expanded(
              child: WebBudgets(),
            ),
          if (_selectedIndex == 4)
            const Expanded(
              child: WebSetting(),
            ),
        ],
      ),
    );
  }
}
