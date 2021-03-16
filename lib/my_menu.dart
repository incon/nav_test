import 'package:flutter/material.dart';
import 'package:nav_test/help_screen.dart';
import 'package:nav_test/home_screen.dart';
import 'package:nav_test/tasks_detail_screen.dart';
import 'package:nav_test/tasks_screen.dart';

class MyMenu extends StatelessWidget {
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
            routes: [HomeScreen.route],
          ),
          _menuItem(
            context: context,
            title: 'Tasks',
            route: TasksScreen.route,
            routes: [TasksScreen.route, TasksDetailScreen.route],
          ),
          _menuItem(
            context: context,
            title: 'Help',
            route: HelpScreen.route,
            routes: [HelpScreen.route],
          ),
        ],
      ),
    );
  }
}

Widget _menuItem(
    {@required BuildContext context,
    @required String title,
    @required String route,
    @required List<String> routes}) {
  final current = routes.contains(ModalRoute.of(context).settings.name);
  return Container(
    color: (current) ? Colors.white.withOpacity(0.1) : Colors.transparent,
    child: ListTile(
      onTap: () {
        if (!current) {
          Navigator.pushReplacementNamed(
            context,
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
