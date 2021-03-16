import 'package:flutter/material.dart';
import 'package:nav_test/my_menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool drawer;

  const MyScaffold({
    required this.title,
    required this.body,
    this.drawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MediaQuery.of(context).size.width < 1000 && drawer
          ? Drawer(
              child: MyMenu(),
            )
          : null,
      body: Center(
        child: body,
      ),
    );
  }
}
