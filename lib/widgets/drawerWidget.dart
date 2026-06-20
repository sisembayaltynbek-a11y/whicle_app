import "package:flutter/material.dart";

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> drawerItems = [
      {"icon": Icons.dashboard, "title": "Dashboard", "route": "/"},
      {"icon": Icons.settings, "title": "Settings", "route": "/settings"},
    ];

    Widget buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
      return ListTile(leading: Icon(icon), title: Text(title), onTap: onTap);
    }

    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              color: Theme.of(context).primaryColor,
              child: const Center(
                child: Text(
                  'Whicle App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ...drawerItems.map((item) {
              return buildDrawerItem(item["icon"], item["title"], () {
                Navigator.of(context).pushReplacementNamed(item["route"]);
              });
            }).toList(),
          ],
        ),
      ),
    );
  }
}
