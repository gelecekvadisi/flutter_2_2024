import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'page/blue_page.dart';
import 'page/green_page.dart';
import 'page/home_page.dart';
import 'page/red_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routeMap = {
    // "/": (context) => HomePage(),
    "/homePage": (context) => HomePage(),
    "/redPage": (context) => RedPage(),
    "/bluePage": (context) => BluePage(),
    "/greenPage": (context) => GreenPage(),
  };

  static Route onGenerateRoute(RouteSettings settings) {
    int yetkiId = 1;

    settings.arguments;

    if (settings.name == "/") {
      return _createPageRoute(HomePage(), settings);
    } else if (settings.name == "/redPage" && yetkiId == 1) {

      int price = settings.arguments as int;
      return _createPageRoute(RedPage(price: price,), settings);

    } else if (settings.name == "/bluePage") {
      return _createPageRoute(BluePage(), settings);
    } else if (settings.name == "/greenPage") {
      return _createPageRoute(GreenPage(), settings);
    }

    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text("404 Sayfa Bulunamadı!"),
        ),
      ),
    );
  }

  static PageRoute<dynamic> _createPageRoute(
      Widget page, RouteSettings settings) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (context) => page,
        settings: settings,
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => page,
        settings: settings,
      );
    }
  }
}
