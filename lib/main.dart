import 'package:flutter/material.dart';
import 'package:nav_test/help_screen.dart';
import 'package:nav_test/home_screen.dart';
import 'package:nav_test/tasks_detail_screen.dart';
import 'package:nav_test/tasks_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Navigation side menu example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        TasksScreen.route: (context) => TasksScreen(),
        TasksDetailScreen.route: (context) => TasksDetailScreen(),
        HelpScreen.route: (context) => HelpScreen(),
      },
    );
  }
}
