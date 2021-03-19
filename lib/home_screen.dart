import 'package:flutter/material.dart';
import 'package:nav_test/my_scaffold.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/';

  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'home',
      body: Text('home'),
    );
  }
}
