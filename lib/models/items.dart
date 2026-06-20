import "package:flutter/material.dart";

class Car {
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
  final String cid;

  const Car({
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
    required this.cid,
  });
}
