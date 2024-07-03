import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemoPage extends StatefulWidget {
  SharedPreferencesDemoPage({super.key});

  @override
  State<SharedPreferencesDemoPage> createState() => _SharedPreferencesDemoPageState();
}

class _SharedPreferencesDemoPageState extends State<SharedPreferencesDemoPage> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();

                await prefs.setString("user_name", "Kerem Yağmur");

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Veri kaydedildi."),
                  ),
                );
              },
              child: Text("Verileri Kaydet"),
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? userName = prefs.getString("user_name");
                if (userName == null) {
                  data = "User name verisi bulunamadı!";
                } else {
                  data = userName;
                }
                setState(() {});
              },
              child: Text("Verileri Yazdır"),
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.remove("user_name");

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Veri silindi."),
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
