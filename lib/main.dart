import 'package:flutter/material.dart';
import 'package:whicle_app/screens/favorite_screen.dart';
import 'package:whicle_app/screens/form_cat.dart';
import './screens/categoryItems.dart';
import './screens/provider.dart';
import './screens/dashboard.dart';
import './screens/categories.dart';
import './screens/item_details.dart';
import 'widgets/myappTheme.dart';
import './screens/settings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whicle App',
      theme: MyAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (ctx) => ProviderScreen(),
        '/dashboard': (ctx) => DashboardScreen(),
        '/categories': (ctx) => CategoriesScreen(),
        '/category-items': (ctx) => CategoryItems(),
        '/settings': (ctx) => Settings(),
        '/item-details': (ctx) => VehicleScreen(),
        '/favorite-page': (ctx) => FavoriteScreen(),
        '/cat-form': (ctx) => CategoryForm(),
      },
    );
  }
}
