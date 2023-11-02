import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category; // Add 'category' property
  final int price, id;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.id,
    required this.color,
    required this.category, // Include the category
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'Cool Hoodie',
    price: 20,
    description: 'Description: this is a cool hoodie',
    image: 'assets/images/bag_1.png',
    color: Color.fromARGB(255, 0, 0, 0),
    category: 'Hoodies', // Specify the category for this product
  ),
  Product(
    id: 2,
    title: 'Cool Shoes',
    price: 150,
    description: 'Description: these are cool shoes',
    image: 'assets/images/bag_2.png',
    color: Color.fromARGB(255, 0, 0, 0),
    category: 'Shoes', // Specify the category for this product
  ),
  Product(
    id: 3,
    title: 'Cool Hat',
    price: 15,
    description: 'Description: this is a cool hat',
    image: 'assets/images/bag_3.png',
    color: Color.fromARGB(255, 0, 0, 0),
    category: 'Hats', // Specify the category for this product
  ),
];
