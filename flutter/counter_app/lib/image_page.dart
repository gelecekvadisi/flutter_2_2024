import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  final String imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhERHfLPJivEihBofpV7srogqfhq2SFMFgWA&s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Page"),
      ),
      body: Center(
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Container(
                  width: 200,
                  // height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.contain
                    ),
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
                      image: AssetImage("assets/images/car2.jpeg"),
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
        ),
      ),
    );
  }
}
