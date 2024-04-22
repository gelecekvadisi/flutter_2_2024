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
      body: GridView.builder(
        itemCount: Colors.primaries.length * 9,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
        itemBuilder: (context, index) {
          // Colors.primaries[]
          return Container(color: Colors.red,);
        },
      ),
    );
  }

  GridView _buildGridViewBuilder() {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
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

      // scrollDirection: Axis.horizontal,

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
