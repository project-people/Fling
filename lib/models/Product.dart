import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  );
}

List<Product> products = [
  Product(
      1,
      "assets/image/product_1.png",
      "Office Code",
      30000,
      "description",
      12,
      Color(0xFF3D82AE)
  ),
  Product(
      2,
      "assets/image/product_2.png",
      "Office Code2",
      20000,
      "description2",
      12,
      Color(0xFFD3A984)
  ),
];