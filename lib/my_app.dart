import 'package:flutter/material.dart';
import 'package:nav_test/my_menu.dart';
import 'package:nav_test/tasks_detail_screen.dart';
import 'package:nav_test/tasks_screen.dart';

import 'help_screen.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Navigation side menu example';

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Layout builder needed for media query
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final mediaQuery = MediaQuery.of(context);
          return Stack(
            children: [
              Row(
                children: [
                  if (mediaQuery.size.width >= 1000)
                    Container(
                      width: 300.0,
                    ),
                  Expanded(
                    child: Container(
                      width: 300.0,
                      child: MaterialApp(
                        title: _title,
                        navigatorKey: navigatorKey,
                        routes: {
                          HomeScreen.route: (context) => HomeScreen(),
                          TasksScreen.route: (context) => TasksScreen(),
                          TasksDetailScreen.route: (context) =>
                              TasksDetailScreen(),
                          HelpScreen.route: (context) => HelpScreen(),
                        },
                      ),
                    ),
                  )
                ],
              ),
              if (mediaQuery.size.width >= 1000)
                Container(
                  width: 300.0,
                  child: Scaffold(
                    body: MyMenu(),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
