import "package:flutter/material.dart";
import "../widgets/carCard.dart";
import "../dummy_data.dart";

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Set<String> favoriteIds = CarCard.favoriteIds;
    return Scaffold(
      body: Center(
        child: favoriteIds.isEmpty
            ? const Text("No favorites yet!")
            : GridView(
                children: [
                  ...favoriteIds.map(
                    (id) => CarCard(
                      id: DummyCars.firstWhere((item) => item.id == id).id,
                      name: DummyCars.firstWhere((item) => item.id == id).name,
                      brand: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).brand,
                      color: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).color,
                      imageUrl: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).imageUrl,
                      description: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).description,
                      price: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).price,
                      year: DummyCars.firstWhere((item) => item.id == id).year,
                      engineType: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).engineType,
                      horsepower: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).horsepower,
                      fuelType: DummyCars.firstWhere(
                        (item) => item.id == id,
                      ).fuelType,
                    ),
                  ),
                ],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
      ),
    );
  }
}
