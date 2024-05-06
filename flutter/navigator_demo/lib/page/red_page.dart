import 'package:flutter/material.dart';

import 'blue_page.dart';

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
                // Navigator.of(context).pop(tutar);
                Navigator.pop(context, tutar);
              },
              child: Text("Geri Dön"),
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
            )
          ],
        ),
      ),
    );
  }
}
