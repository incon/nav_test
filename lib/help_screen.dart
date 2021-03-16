import 'package:flutter/material.dart';
import 'package:nav_test/my_scaffold.dart';

class HelpScreen extends StatelessWidget {
  static const String route = '/help';

  const HelpScreen();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: 'Help', body: Text('Help'));
  }
}
