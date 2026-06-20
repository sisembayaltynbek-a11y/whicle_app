import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/carCard.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [
        ...DummyCars.map(
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
