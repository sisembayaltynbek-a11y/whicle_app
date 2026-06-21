import 'package:flutter/material.dart';
import 'package:whicle_app/widgets/drawerWidget.dart';

class Settings extends StatelessWidget {
  static const routeName = '/settings';

  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(child: Text("Settings Page")),
      drawer: CustomDrawer(),
    );
  }
}
