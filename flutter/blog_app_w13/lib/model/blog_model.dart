import 'package:flutter/material.dart';

class BlogModel {
  String imageUrl;
  String categoryName;
  Color categoryColor;
  String title;
  String content;

  BlogModel({
    required this.imageUrl,
    required this.categoryName,
    required this.categoryColor,
    required this.title,
    required this.content,
  });
}