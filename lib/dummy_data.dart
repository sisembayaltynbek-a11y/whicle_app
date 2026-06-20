import "package:flutter/material.dart";
import "../models/categories.dart";
import "../models/items.dart";

List<Category> DummyCategories = [
  Category(id: "1", name: "Sedan", brand: "Toyota", color: Colors.blue),
  Category(id: "2", name: "SUV", brand: "Honda", color: Colors.green),
  Category(id: "3", name: "Truck", brand: "Ford", color: Colors.red),
  Category(id: "4", name: "Coupe", brand: "BMW", color: Colors.orange),
];

List<Car> DummyCars = [
  Car(
    id: "1",
    name: "Camry",
    brand: "Toyota",
    color: Colors.blue,
    imageUrl:
        "https://file.kelleybluebookimages.com/kbb/base/evox/CP/12105/2020-Toyota-Camry-front_12105_032_1837x752_8T7_cropped.png",
    description: "A reliable sedan with great fuel efficiency.",
    price: 24000.0,
    year: 2020,
    engineType: "2.5L I4",
    horsepower: 203,
    fuelType: "Gasoline",
    cid: "1",
  ),
  Car(
    id: "2",
    name: "CR-V",
    brand: "Honda",
    color: Colors.green,
    imageUrl:
        "https://media.drive.com.au/obj/tx_q:50,rs:auto:1920:1080:1/driveau/upload/cms/uploads/yxjLIKwyRQu1qf7PS4pi",
    description: "A versatile SUV with ample cargo space.",
    price: 28000.0,
    year: 2021,
    engineType: "1.5L Turbo I4",
    horsepower: 190,
    fuelType: "Gasoline",
    cid: "2",
  ),
  Car(
    id: "3",
    name: "F-150",
    brand: "Ford",
    color: Colors.red,
    imageUrl:
        "https://di-sitebuilder-assets.dealerinspire.com/Ford/MLP/f150/2022/color-Race-Red.jpg",
    description: "A powerful truck with towing capacity.",
    price: 35000.0,
    year: 2022,
    engineType: "3.3L V6",
    horsepower: 290,
    fuelType: "Gasoline",
    cid: "3",
  ),
  Car(
    id: "4",
    name: "4 Series",
    brand: "BMW",
    color: Colors.orange,
    imageUrl:
        "https://di-shared-assets.dealerinspire.com/legacy/rackspace/ldm-images/2021-BMW-4-Series-color-Sunset-Orange-Metallic.png",
    description:
        "Expressive exterior design paired with dynamic, driver-centric performance.",
    price: 48000.0,
    year: 2022,
    engineType: "2.0L Turbo I4",
    horsepower: 255,
    fuelType: "Gasoline",
    cid: "4",
  ),
];
