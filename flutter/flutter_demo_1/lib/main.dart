import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/button_page.dart';
import 'package:flutter_demo_1/pages/card_page.dart';
import 'package:flutter_demo_1/pages/custom_button_page.dart';
import 'package:flutter_demo_1/pages/grid_view_page.dart';
import 'package:flutter_demo_1/pages/list_view_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* darkTheme: ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.red,
        cardTheme: CardTheme(
          color: Colors.red,
        ),
      ),
      themeMode: ThemeMode.dark, */
      title: 'Material App',
      home: GridViewPage(),
      builder: EasyLoading.init(),
    );
  }
}