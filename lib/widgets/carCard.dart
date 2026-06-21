import 'package:flutter/material.dart';
import './snackBar.dart';

class CarCard extends StatefulWidget {
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
  static Set<String> get favoriteIds => _CarCardState._favoriteIds;
  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  static final Set<String> _favoriteIds = {};
  static bool isFavorite(String id) {
    return _favoriteIds.contains(id);
  }

  void _toggleFavorite() {
    setState(() {
      if (_favoriteIds.contains(widget.id)) {
        _favoriteIds.remove(widget.id);

        GlassSnackbar.show(
          context,
          message: "Removed from favorites",
          icon: Icons.favorite_border,
        );
      } else {
        _favoriteIds.add(widget.id);

        GlassSnackbar.show(
          context,
          message: "You liked this product",
          icon: Icons.favorite,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    void selectItem() {
      Navigator.pushNamed(
        context,
        "/item-details",
        arguments: {
          'id': widget.id,
          'name': widget.name,
          'brand': widget.brand,
          'color': widget.color.toString(),
          'imageUrl': widget.imageUrl,
          'description': widget.description,
          'price': widget.price.toString(),
          'year': widget.year.toString(),
          'engineType': widget.engineType,
          'horsepower': widget.horsepower.toString(),
          'fuelType': widget.fuelType,
          'toggleFavorite': _toggleFavorite,
          'listofFavs': _favoriteIds,
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
                widget.imageUrl,
                height: 145,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              ListTile(
                title: Text(
                  widget.name,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.brand,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    IconButton(
                      onPressed: _toggleFavorite,
                      icon: Icon(
                        isFavorite(widget.id)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: const Color.fromARGB(255, 255, 17, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 123, 107, 230).withOpacity(0.4),
                widget.color,
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
