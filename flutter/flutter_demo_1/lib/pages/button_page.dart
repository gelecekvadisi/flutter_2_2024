import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Page"),
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
              child: Text("TextButton"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.heart_broken),
              label: Text("TextButton.icon"),
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
              child: Text("ElevatedButton"),
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
                shape: StadiumBorder(),
                shadowColor: Colors.green,
              ),
              onPressed: () {
                debugPrint("Butona tıklandı");
              },
              icon: Icon(Icons.add_a_photo),
              label: Text("ElevatedButton.icon"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                side: BorderSide(
                  color: Colors.red,
                  width: 10,
                )
              ),
              onPressed: () {},
              child: Text("OutlinedButton"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.now_wallpaper),
              label: Text("OutlinedButton.icon"),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.heart_broken),
            ),
          ],
        ),
      ),
    );
  }
}
