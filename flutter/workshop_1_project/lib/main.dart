import 'package:flutter/material.dart';
import 'package:workshop_1_project/page/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  Snake Case      snake_case      dosya, klasör
  //  Camel Case      camelCase       değişken, fonksiyonlar
  //  Pascal Case     PascalCase      class

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}