import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/button_page.dart';
import 'package:flutter_demo_1/pages/card_page.dart';
import 'package:flutter_demo_1/pages/custom_button_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CardPage(),
    );
  }
}