import 'package:flutter/material.dart';
import 'package:navigator_demo/page/blue_page.dart';
import 'package:navigator_demo/page/green_page.dart';
import 'package:navigator_demo/page/home_page.dart';
import 'package:navigator_demo/page/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        // "/": (context) => HomePage(),
        "/homePage": (context) => HomePage(),
        "/redPage": (context) => RedPage(),
        "/bluePage": (context) => BluePage(),
        "/greenPage": (context) => GreenPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text("404 Sayfa Bulunamadı!"),
                ),
              ));
      },
      initialRoute: "/homePage",
    );
  }
}
