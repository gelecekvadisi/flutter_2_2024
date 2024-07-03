import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecureStorageDemoPage extends StatefulWidget {
  SecureStorageDemoPage({super.key});

  @override
  State<SecureStorageDemoPage> createState() => _SecureStorageDemoPageState();
}

class _SecureStorageDemoPageState extends State<SecureStorageDemoPage> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secure Storage Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                FlutterSecureStorage secureStorage =
                    const FlutterSecureStorage();

                await secureStorage.write(
                  key: "user_name",
                  value: "Furkan Yağmur",
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Veriler kaydedildi."),
                  ),
                );
              },
              child: Text("Verileri Kaydet"),
            ),
            ElevatedButton(
              onPressed: () async {
                data = await FlutterSecureStorage().read(key: "user_name");
                setState(() {
                });
              },
              child: Text("Verileri Yazdır"),
            ),
            ElevatedButton(
              onPressed: () async {
                await FlutterSecureStorage().delete(key: "user_name");

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Veriler silindi."),
                  ),
                );
              },
              child: Text("Verileri Sil"),
            ),
            Text(data ?? "Yazdırılacak veriyi yok."),
          ],
        ),
      ),
    );
  }
}
