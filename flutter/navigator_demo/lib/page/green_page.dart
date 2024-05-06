import 'package:flutter/material.dart';
import 'package:navigator_demo/page/blue_page.dart';
import 'package:navigator_demo/page/home_page.dart';
import 'package:navigator_demo/page/red_page.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeşil Sayfa"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                    (route) => false,
                  );
              },
              child: Text("Ana Sayfaya Git"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RedPage();
                      },
                    ),
                  );
              },
              child: Text("Kırmızı Sayfaya Git"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BluePage();
                      },
                    ),
                  );
              },
              child: Text("Mavi Sayfaya Git"),
            ),
          ],
        ),
      ),
    );
  }
}
