import 'package:flutter/material.dart';
import 'package:nav_test/my_scaffold.dart';

class TasksDetailScreen extends StatelessWidget {
  static const String route = '/tasks/detail';

  const TasksDetailScreen();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Task Detail',
      body: Text('Task Detail'),
      drawer: false,
    );
  }
}
