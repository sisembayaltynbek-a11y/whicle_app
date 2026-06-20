import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/carCard.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryCars = DummyCars.where(
      (car) => car.cid == routeArgs['id'],
    ).toList();

    return Scaffold(
      appBar: AppBar(title: Text(routeArgs['name'] ?? 'Category Items')),
      body: GridView(
        padding: const EdgeInsets.all(10),
        children: categoryCars
            .map(
              (car) => CarCard(
                id: car.id,
                name: car.name,
                brand: car.brand,
                color: car.color,
                imageUrl: car.imageUrl,
                description: car.description,
                price: car.price,
                year: car.year,
                engineType: car.engineType,
                horsepower: car.horsepower,
                fuelType: car.fuelType,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
