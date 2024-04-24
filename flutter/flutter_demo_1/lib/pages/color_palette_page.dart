import 'package:flutter/material.dart';

class ColorPalettePage extends StatelessWidget {
  const ColorPalettePage({super.key});

  @override
  Widget build(BuildContext context) {
    var renkler = Colors.primaries;
    int col = 3;

    return Scaffold(
      appBar: AppBar(
        title: Text("Material Ana Renk Paleti"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            debugPrint("Hello World!");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Hello World!"),
              ),
            );
          },
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Hello World!",
              ),
            ),
          ),
        ),
      ),
    );
  }

  GridView _buildColorPalette(List<MaterialColor> renkler, int col) {
    return GridView.builder(
      itemCount: renkler.length * col,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: col),
      itemBuilder: (context, index) {
        MaterialColor materialColor = renkler[(index / col).floor()];

        Color? color = materialColor[((index % col) + 1) * 100];

        // return GestureDetector(onTap: () {}, child: Container());
        return GestureDetector(
          onTap: () {
            debugPrint(index.toString());
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Tıklanan index: $index"),
              ),
            );
          },
          child: Container(
            color: color,
            child: Center(child: Text(index.toString())),
          ),
        );
      },
    );
  }

  GridView _colorShadeDemo() {
    return GridView.count(
      crossAxisCount: 9,
      children: [
        Container(color: Colors.red.shade100),
        Container(color: Colors.red.shade200),
        Container(color: Colors.red.shade300),
        Container(color: Colors.red.shade400),
        Container(color: Colors.red.shade500),
        Container(color: Colors.red.shade600),
        Container(color: Colors.red.shade700),
        Container(color: Colors.red.shade800),
        Container(color: Colors.red.shade900),
        Container(color: Colors.orange.shade100),
        Container(color: Colors.orange.shade200),
        Container(color: Colors.orange.shade300),
        Container(color: Colors.orange.shade400),
        Container(color: Colors.orange.shade500),
        Container(color: Colors.orange.shade600),
        Container(color: Colors.orange.shade700),
        Container(color: Colors.orange.shade800),
        Container(color: Colors.orange.shade900),
      ],
    );
  }
}
