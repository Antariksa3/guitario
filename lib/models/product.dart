import 'package:flutter/material.dart';

class ProductField {
  static final List<String> values = [
    id,
    images,
    ratings,
    description,
    colors,
    isFavourite,
    isPopular,
    title,
    price
  ];

  static const favorite = 'favorite';

  static final String id = 'id';
  static final String images = 'images';
  static final String ratings = 'ratings';
  static final String description = 'description';
  static final String colors = 'colors';
  static final String isFavourite = 'isFavourite';
  static final String isPopular = 'isPopular';
  static final String title = 'title';
  static final String price = 'price';
}

class Product {
  final int id;
  final String title, price, description, images;
  final List<Color> colors;
  final bool isFavourite, isPopular;
  final String ratings;

  Product({
    required this.id,
    required this.images,
    required this.ratings,
    required this.description,
    required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
  });

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        title: json['title'] as String,
        price: json['price'] as String,
        description: json['description'] as String,
        images: json['images'] as String,
        colors: json['colors'] as List<Color>,
        isFavourite: json['isFavourite'] as bool,
        isPopular: json['isPopular'] as bool,
        ratings: json['ratings'] as String);
  }

  Map<String, dynamic> toMap() => {
        ProductField.id: id,
        ProductField.title: title,
        ProductField.price: price,
        ProductField.images: images
      };
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: "assets/images/popular/1.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "SG Standard \'61 Maestro Vibrola",
    price: "1,499",
    ratings: '4.8',
    isFavourite: true,
    isPopular: true,
    description: description,
  ),
  Product(
    id: 2,
    images: "assets/images/popular/2.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Squier Affinity Stratocaster",
    price: "299",
    ratings: '4.2',
    isFavourite: false,
    isPopular: true,
    description: description,
  ),
  Product(
    id: 3,
    images: "assets/images/popular/3.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Squier Classic Vibe \'70 Jaguar Black",
    price: "599",
    ratings: '4.3',
    isFavourite: true,
    isPopular: true,
    description: description,
  ),
  Product(
    id: 4,
    images: "assets/images/popular/4.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Shecter Omen Extreme 6",
    price: "399",
    ratings: '4.6',
    isFavourite: false,
    isPopular: true,
    description: description,
  ),
];

List<Product> recommendProducts = [
  Product(
    id: 1,
    images: "assets/images/recommend/1.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gretsch G5222 Double Jet",
    price: "599",
    ratings: '4.1',
    isFavourite: false,
    isPopular: true,
    description: description,
  ),
  Product(
    id: 2,
    images: "assets/images/recommend/2.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Reverend Billy Corgan Z-One",
    price: "1,199",
    ratings: '4.9',
    isFavourite: true,
    isPopular: true,
    description: description,
  ),
  Product(
    id: 3,
    images: "assets/images/recommend/3.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Ibanez Genesis Collection RG550",
    price: "899",
    ratings: '4.7',
    isFavourite: true,
    isPopular: true,
    description: description,
  ),
  Product(
    id: 4,
    images: "assets/images/recommend/4.png",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Fender American Ultra Telecaster",
    price: "2,099",
    ratings: '4.0',
    isFavourite: true,
    isPopular: true,
    description: description,
  ),
];

const String description =
    "The SG originally came out in 1961 under the name of “Les Paul”, as it was intended to replace it.";
