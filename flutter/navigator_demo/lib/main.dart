import 'package:flutter/material.dart';
import 'package:navigator_demo/page/home_page.dart';
import 'package:navigator_demo/page/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
