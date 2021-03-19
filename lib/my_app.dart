import 'package:flutter/material.dart';
import 'package:nav_test/my_menu.dart';
import 'package:nav_test/my_page_route.dart';
import 'package:nav_test/tasks_detail_screen.dart';
import 'package:nav_test/tasks_screen.dart';

import 'help_screen.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    final bool isTablet = MediaQuery.of(context).size.width >= 1000;

    return Scaffold(
      body: Row(
        children: [
          if (isTablet)
            Container(
              width: 300.0,
              child: MyMenu(),
            ),
          Expanded(
            child: Navigator(
              key: navigatorKey,
              initialRoute: HomeScreen.route,
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case HomeScreen.route:
                    return MyPageRoute(builder: (_) => HomeScreen());
                  case TasksScreen.route:
                    return MyPageRoute(builder: (_) => TasksScreen());
                  case TasksDetailScreen.route:
                    return MyPageRoute(builder: (_) => TasksDetailScreen());
                  case HelpScreen.route:
                    return MyPageRoute(builder: (_) => HelpScreen());
                  default:
                    return MyPageRoute(builder: (_) => HomeScreen());
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
