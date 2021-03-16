import 'package:flutter/material.dart';
import 'package:nav_test/my_menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool drawer;

  const MyScaffold({
    @required this.title,
    @required this.body,
    this.drawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.width <= 1000)
        ? Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            drawer: drawer
                ? Drawer(
                    child: MyMenu(),
                  )
                : null,
            body: Center(
              child: body,
            ),
          )
        : Row(
            children: [
              Container(
                width: 300.0,
                child: Scaffold(
                  body: MyMenu(),
                ),
              ),
              Expanded(
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: body,
                  ),
                ),
              )
            ],
          );
  }
}
