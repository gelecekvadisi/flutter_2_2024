import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kırmızı Sayfa"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Kırmızı Sayfa",
              style: TextStyle(color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {

                double tutar = 300;

                Navigator.pop(context, tutar);
              },
              child: Text("Geri Dön"),
            ),
          ],
        ),
      ),
    );
  }
}
