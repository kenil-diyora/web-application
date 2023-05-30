import 'package:demo1/dashboard/overview_web.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';

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
          NavigationRail(
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
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('First'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text('Second'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
          // const VerticalDivider(
          //   thickness: 1,
          //   width: 1,
          // ),
          // This is the main content.
          if (_selectedIndex == 0)
            const Expanded(
              child: WebOverview(),
            ),
        ],
      ),
    );
  }
}
