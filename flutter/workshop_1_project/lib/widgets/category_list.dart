import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final List<String> categoriList = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Jewellery",
    "Footwear",
    "Dresses",
  ];

  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("Category List Build");
    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
        scrollDirection: Axis.horizontal,
        itemCount: categoriList.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: Constants.defaultPadding * 2,
          );
        },
        itemBuilder: (context, index) {
          return _buildCategoryItem(index);
        },
      ),
    );
  }

  Widget _buildCategoryItem(int index) {
    bool isSelected = selectedCategoryIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            categoriList[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected
                  ? Constants.textColor
                  : Constants.textHintColor,
            ),
          ),
          Visibility(
            visible: isSelected,
            child: Container(
              color: Constants.textColor,
              height: 2,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
