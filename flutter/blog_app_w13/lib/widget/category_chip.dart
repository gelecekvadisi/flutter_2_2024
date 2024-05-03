import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  CategoryChip({
    super.key,
    required this.categoryName,
    required this.categoryColor,
  });

  String categoryName;
  Color categoryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
          color: categoryColor, borderRadius: BorderRadius.circular(200)),
      child: Text(
        categoryName,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}