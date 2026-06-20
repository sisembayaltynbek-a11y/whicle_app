import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final String id;
  final String name;
  final String brand;
  final Color color;
  final String imageUrl;
  final String description;
  final double price;
  final int year;
  final String engineType;
  final int horsepower;
  final String fuelType;

  CarCard({
    super.key,
    required this.id,
    required this.name,
    required this.brand,
    required this.color,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.year,
    required this.engineType,
    required this.horsepower,
    required this.fuelType,
  });

  @override
  Widget build(BuildContext context) {
    void selectItem() {
      Navigator.pushNamed(
        context,
        "/item-details",
        arguments: {
          'id': id,
          'name': name,
          'brand': brand,
          'color': color.toString(),
          'imageUrl': imageUrl,
          'description': description,
          'price': price.toString(),
          'year': year.toString(),
          'engineType': engineType,
          'horsepower': horsepower.toString(),
          'fuelType': fuelType,
        },
      );
    }

    return InkWell(
      onTap: selectItem,
      child: Card(
        child: Container(
          child: Column(
            children: [
              Image.network(
                imageUrl,
                height: 145,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              ListTile(
                title: Text(name, style: const TextStyle(color: Colors.white)),
                subtitle: Text(
                  brand,
                  style: const TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 123, 107, 230).withOpacity(0.4),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
