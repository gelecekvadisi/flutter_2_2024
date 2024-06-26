import 'package:flutter/material.dart';

import '../model/product.dart';

List<Product> productList = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: _description,
    image: "assets/images/bag_1.png",
    backgroundColor: Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    description: _description,
    image: "assets/images/bag_2.png",
    backgroundColor: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 10,
    description: _description,
    image: "assets/images/bag_3.png",
    backgroundColor: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    description: _description,
    image: "assets/images/bag_4.png",
    backgroundColor: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: _description,
    image: "assets/images/bag_5.png",
    backgroundColor: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: _description,
    image: "assets/images/bag_6.png",
    backgroundColor: Color(0xFF9D9D9D),
  ),
];

String _description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";