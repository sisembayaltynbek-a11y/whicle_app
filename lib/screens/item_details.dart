import 'package:flutter/material.dart';

class VehicleScreen extends StatelessWidget {
  VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ??
        {};
    final String name = routeArgs['name'] ?? '';
    final String brand = routeArgs['brand'] ?? '';
    final String imageUrl = routeArgs['imageUrl'] ?? '';
    final String description = routeArgs['description'] ?? '';
    final double price = double.tryParse(routeArgs['price'] ?? '0') ?? 0;
    final int year = int.tryParse(routeArgs['year'] ?? '0') ?? 0;
    final String engineType = routeArgs['engineType'] ?? '';
    final int horsepower = int.tryParse(routeArgs['horsepower'] ?? '0') ?? 0;
    final String fuelType = routeArgs['fuelType'] ?? '';

    void purchase() {
      // Implement purchase logic here
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You have purchased this item!'),
          backgroundColor: Colors.green,
          showCloseIcon: true,
          closeIconColor: Colors.white,
          duration: Duration(seconds: 2),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(imageUrl, fit: BoxFit.cover),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Brand: $brand", style: const TextStyle(fontSize: 24)),
                  const SizedBox(height: 10),
                  Text("Name: $name", style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 10),
                  Text(
                    "Description: $description",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Price: \$${price.toStringAsFixed(2)}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text("Year: $year", style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text(
                    "Engine Type: $engineType",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Horsepower: $horsepower",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Fuel Type: $fuelType",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: purchase,
                    child: const Text("Purchase"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
