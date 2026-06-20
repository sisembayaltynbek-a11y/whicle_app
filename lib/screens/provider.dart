import 'package:flutter/material.dart';
import '../screens/categories.dart';
import '../screens/dashboard.dart';
import '../widgets/drawerWidget.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  static String? get routeName => null;

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  final String routeName = '/';
  List<Widget> get _pages => [DashboardScreen(), CategoriesScreen()];
  List<Widget> _appBar = [const Text('Dashboard'), const Text('Categories')];
  int selectedIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _appBar[selectedIndex]),
      body: _pages[selectedIndex],
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
        ],
      ),
    );
  }
}
