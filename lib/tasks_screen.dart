import 'package:flutter/material.dart';
import 'package:nav_test/my_scaffold.dart';
import 'package:nav_test/tasks_detail_screen.dart';

class TasksScreen extends StatelessWidget {
  static const String route = '/tasks';

  const TasksScreen();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'text',
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              TasksDetailScreen.route,
            );
          },
          child: Text('Detail'),
        ),
      ),
    );
  }
}
