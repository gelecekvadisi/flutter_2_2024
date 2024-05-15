import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workshop_1_project/constants.dart';
import 'package:workshop_1_project/page/detail_page.dart';
import 'package:workshop_1_project/widgets/category_list.dart';
import 'package:workshop_1_project/widgets/my_app_bar.dart';

import '../data/data_source.dart';
import '../model/product.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Home Page Build");
    return Scaffold(
      appBar: MyAppBar(context: context,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(Constants.defaultPadding),
            child: Text(
              "Women",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Constants.textColor,
              ),
            ),
          ),
          const CategoryList(),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(Constants.defaultPadding),
              itemCount: productList.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: Constants.defaultPadding,
                mainAxisSpacing: Constants.defaultPadding,
              ),
              itemBuilder: (context, index) {
                Product product = productList[index];
                return _buildProductItem(product);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    double imageSize = 150;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(product: product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: product.backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.asset(
                  product.image,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Constants.defaultPadding / 2,
          ),
          Text(
            product.title,
            style: TextStyle(
              color: Constants.textHintColor,
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
                color: Constants.textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
