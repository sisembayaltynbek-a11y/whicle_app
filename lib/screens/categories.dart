import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/categoryCard.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [
        ...DummyCategories.map(
          (category) => CategoryCard(
            id: category.id,
            name: category.name,
            brand: category.brand,
            color: category.color,
          ),
        ),
      ].toList(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
    );
  }
}
