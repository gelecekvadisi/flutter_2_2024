import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayaç Uygulaması"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Butona şu kadar tıkladınız:",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "$counter",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
