import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator_demo/page/blue_page.dart';

import 'green_page.dart';
import 'red_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                /* Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return RedPage();
                  })); */

                /* NavigatorState navigator = Navigator.of(context);
                double? odenenTutar = await navigator.push<double>(
                  MaterialPageRoute(builder: (context) {
                    return RedPage();
                  }),
                );
                debugPrint("Ödenen tutar: $odenenTutar"); */

                Navigator.pushNamed(context, "/redPage", arguments: 345);
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RedPage(),
                    settings: RouteSettings(arguments: 100),
                  ),
                ); */
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Kırmızı Sayfa"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) {
                    return RedPage(price: 1000,);
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Kırmızı Sayfa (IOS)"),
            ),
            ElevatedButton(
              onPressed: () async {
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BluePage(),
                  ),
                ); */
                Navigator.pushNamed(context, "/bluePage");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Mavi Sayfa"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                /* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GreenPage();
                      },
                    ),
                  ); */
                Navigator.pushNamed(context, "/greenPage");
              },
              child: Text("Yeşil Sayfaya Git"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/blackPage");
              },
              child: Text("Siyah Sayfaya Git"),
            ),
          ],
        ),
      ),
    );
  }
}
