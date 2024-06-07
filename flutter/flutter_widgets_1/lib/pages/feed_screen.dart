import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: const Text(
            "Hello World!",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      );
  }
}