import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  final String imageUrl =
      "https://cdn.naturettl.com/wp-content/uploads/2020/04/25152036/how-to-find-great-locations-for-landscape-photography-11.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Page"),
      ),
      body: Center(
        child: Column(
          children: [
            _buildImageRow(),
            // FadeInImage.assetNetwork(
            //   height: 200,
            //   width: 300,
            //   // fit: BoxFit.cover,
            //   placeholderFit: BoxFit.cover,
            //   placeholder: "assets/images/car.jpeg",
            //   image: imageUrl,
            // ),
            Expanded(
              child: Placeholder(
                color: Colors.green,
                strokeWidth: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IntrinsicHeight _buildImageRow() {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image(image: AssetImage("assets/images/car.jpeg")),
          // Image.asset("assets/images/car.jpeg"),
          Flexible(
            child: Container(
              width: 200,
              // height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("assets/images/car.jpeg"),
                    // image: NetworkImage(imageUrl),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: 200,
              // height: 200,
              // margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  // repeat: ImageRepeat.repeat,
                ),
              ),
            ),
          ),
          Flexible(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/car.jpeg"),
              child: Text(
                "FLUTTER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // backgroundColor: Colors.red,
              /* child: Text(
                      "FLUTTER",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ), */
            ),
          ),

          /* Image(
                  image: AssetImage("assets/images/car2.jpeg"),
                ), */
          /* Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: AssetImage("assets/images/car2.jpeg"),
                    ),
                  ),
                ), */
        ],
      ),
    );
  }
}
