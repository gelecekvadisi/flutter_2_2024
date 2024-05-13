import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workshop_1_project/constants.dart';
import 'package:workshop_1_project/widgets/my_app_bar.dart';

import '../model/product.dart';

class DetailPage extends StatelessWidget {
  DetailPage({
    super.key,
    required this.product,
  });

  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.backgroundColor,
      appBar: MyAppBar(
        backgroundColor: product.backgroundColor,
        iconColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 310),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
            ),
          ),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(Constants.defaultPadding).copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            product.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: Constants.defaultPadding * 3,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                product.image,
                width: 270,
                height: 270,
                fit: BoxFit.contain,
              )
            ],
          ),
        ],
      ),
    );
  }
}
