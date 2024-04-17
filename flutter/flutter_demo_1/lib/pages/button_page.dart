import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                debugPrint("Text Butona Tıklandı!");
              },
              child: const Text("TextButton"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.heart_broken),
              label: const Text("TextButton.icon"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return null;
                }),
              ),
              onPressed: () {},
              child: const Text("ElevatedButton"),
            ),
            ElevatedButton.icon(
              onLongPress: () {
                debugPrint("Butona basılı tutuldu.");
              },
              style: ElevatedButton.styleFrom(
                elevation: 10,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(5),
                // ),
                shape: const StadiumBorder(),
                shadowColor: Colors.green,
              ),
              onPressed: () {
                debugPrint("Butona tıklandı");
              },
              icon: const Icon(Icons.add_a_photo),
              label: const Text("ElevatedButton.icon"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                side: const BorderSide(
                  color: Colors.red,
                  width: 10,
                )
              ),
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              onLongPress: () {},
              icon: const Icon(Icons.now_wallpaper),
              label: const Text("OutlinedButton.icon"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.heart_broken),
            ),
          ],
        ),
      ),
    );
  }
}
