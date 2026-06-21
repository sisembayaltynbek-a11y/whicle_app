import 'package:flutter/material.dart';
import 'package:whicle_app/screens/favorite_screen.dart';
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
  List<Widget> get _pages => [
    DashboardScreen(),
    CategoriesScreen(),
    FavoriteScreen(),
  ];
  List<Widget> _appBar = [
    const Text('Dashboard'),
    const Text('Categories'),
    const Text("Favorites"),
  ];
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
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/cat-form');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.white,
      ),
    );
  }
}
