import 'package:demo1/config/color.dart';
import 'package:demo1/dashboard/dasshboard_web.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _selectedIndex = 0;

  // NavigationRailLabelType labelType = NavigationRailLabelType.all;

  // bool showLeading = false;
  //
  // bool showTrailing = false;

  // double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: DashboardWeb(),
            ),
        ],
      ),
    );
  }
}
