import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator_demo/page/blue_page.dart';

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
                NavigatorState navigator = Navigator.of(context);
                double? odenenTutar = await navigator.push<double>(
                  MaterialPageRoute(builder: (context) {
                    return RedPage();
                  }),
                );
                debugPrint("Ödenen tutar: $odenenTutar");
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
                    return RedPage();
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BluePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Mavi Sayfa"),
            ),
          ],
        ),
      ),
    );
  }
}
