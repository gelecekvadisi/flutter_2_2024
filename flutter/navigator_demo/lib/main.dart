import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator_demo/page/blue_page.dart';
import 'package:navigator_demo/page/green_page.dart';
import 'package:navigator_demo/page/home_page.dart';
import 'package:navigator_demo/page/red_page.dart';

import 'routes.dart';

/// 1- ModelRoute
/// 2- Constructor


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      /* routes: Routes.routeMap,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("404 Sayfa Bulunamadı!"),
            ),
          ),
        );
      }, 
      initialRoute: "/homePage", */
      //home: HomePage(),

      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
