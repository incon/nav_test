import 'package:flutter/material.dart';
import 'package:nav_test/help_screen.dart';
import 'package:nav_test/home_screen.dart';
import 'package:nav_test/main.dart';
import 'package:nav_test/tasks_screen.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  String currentRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(10, 40, 70, 1),
      child: ListView(
        children: <Widget>[
          _menuItem(
            context: context,
            title: 'Home',
            route: HomeScreen.route,
          ),
          _menuItem(
            context: context,
            title: 'Tasks',
            route: TasksScreen.route,
          ),
          _menuItem(
            context: context,
            title: 'Help',
            route: HelpScreen.route,
          ),
        ],
      ),
    );
  }

  Widget _menuItem({
    required BuildContext context,
    required String title,
    required String route,
  }) {
    final current = route == currentRoute;
    return Container(
      color: (current) ? Colors.white.withOpacity(0.1) : Colors.transparent,
      child: ListTile(
        onTap: () {
          if (!current) {
            setState(() {
              currentRoute = route;
            });
            while (navigatorKey.currentState!.canPop()) {
              navigatorKey.currentState!.pop();
            }
            navigatorKey.currentState!.pushReplacementNamed(
              route,
            );
          }
        },
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
