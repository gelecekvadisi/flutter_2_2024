import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workshop_1_project/constants.dart';
import 'package:workshop_1_project/widgets/my_app_bar.dart';
import 'package:workshop_1_project/widgets/my_number_selector.dart';

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
        context: context,
        backgroundColor: product.backgroundColor,
        iconColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 310),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
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
          _buildTitle(),
          SizedBox(
            height: Constants.defaultPadding * 3,
          ),
          _buildImageAndPrice(),
          _buildColorAndSize(),
          SizedBox(
            height: Constants.defaultPadding * 2,
          ),
          _buildDescription(),
          SizedBox(
            height: Constants.defaultPadding * 2,
          ),
          Row(
            children: [
              MyNumberSelector(),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.redAccent.shade200,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Text _buildDescription() {
    return Text(
      product.description,
      style: TextStyle(
        color: Constants.textColor,
      ),
    );
  }

  Row _buildColorAndSize() {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Color",
              style: TextStyle(color: Constants.textColor, fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                _buildColorWidget(Color(0xFF356C95)),
                SizedBox(
                  width: 8,
                ),
                _buildColorWidget(Color(0xFFF8C078)),
                SizedBox(
                  width: 8,
                ),
                _buildColorWidget(Color(0xFFA29B9B)),
              ],
            ),
          ],
        )),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  fontSize: 16,
                  color: Constants.textColor,
                ),
              ),
              Text(
                "${product.size} cm",
                style: TextStyle(
                    color: Constants.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  CircleAvatar _buildColorWidget(Color color) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 11,
    );
  }

  Column _buildTitle() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
  }

  Row _buildImageAndPrice() {
    return Row(
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
    );
  }
}
