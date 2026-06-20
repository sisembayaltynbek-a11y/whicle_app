import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String id;
  final String name;
  final String brand;
  final Color color;

  const CategoryCard({
    super.key,
    required this.id,
    required this.name,
    required this.brand,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    void selectItem() {
      Navigator.pushNamed(
        context,
        "/category-items",
        arguments: {
          'id': id,
          'name': name,
          'brand': brand,
          'color': color.toString(),
        },
      );
    }

    return InkWell(
      onTap: selectItem,
      child: Card(
        child: Container(
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
          child: Column(
            children: [
              ListTile(
                title: Text(name, style: const TextStyle(color: Colors.white)),
                subtitle: Text(
                  brand,
                  style: const TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
