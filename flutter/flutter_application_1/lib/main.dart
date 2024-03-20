import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("İlk Uygulamam"),
          centerTitle: true,
        ),
        // backgroundColor: Colors.amber,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            debugPrint("Butona tıklandı!");
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: const Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              color: Colors.red,
              fontSize: 48,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
