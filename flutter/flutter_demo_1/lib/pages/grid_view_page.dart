import 'dart:math';

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  GridViewPage({super.key});

  List<Color> colors = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GirdView Kullanımları"),
      ),
      body: _buildGridViewBuilder(),
    );
  }

  GridView _buildGridViewBuilder() {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.primaries[Random().nextInt(10)],
          child: Text("${index + 1}"),
        );
      },
    );
  }

  GridView _buildGidViewCount() {
    return GridView.count(
      crossAxisCount: 3,
      children: [],
    );
    // return GridView.extent(maxCrossAxisExtent: 300, children: [],);
  }

  GridView _buildGridView() {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        mainAxisExtent: 250,
      ),
      // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

      scrollDirection: Axis.horizontal,

      children: [
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
        Container(color: Colors.purple),
        Container(color: Colors.brown),
        Container(color: Colors.orange),
        Container(color: Colors.lime),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
        Container(color: Colors.purple),
        Container(color: Colors.brown),
        Container(color: Colors.orange),
        Container(color: Colors.lime),
      ],
    );
  }
}
