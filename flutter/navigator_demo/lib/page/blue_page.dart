import 'package:flutter/material.dart';
import 'package:navigator_demo/page/home_page.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        await showDialog(
            context: context,
            builder: (dialogContext) {
              return AlertDialog(
                title: Text("Sayfadan Çıkış"),
                content: Text("Sayfadan çıkmak istediğinize emin misiniz?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("İptal")),
                  ElevatedButton(
                      onPressed: () {
                        // WidgetsBinding.instance
                        //     .addPostFrameCallback((timeStamp) {
                          Navigator.of(context).pop();
                        // });
                        WidgetsBinding.instance
                            .addPostFrameCallback((timeStamp) {
                          Navigator.of(context).pop();
                        });
                      },
                      child: Text("Çıkış")),
                ],
              );
            });
            // Navigator.of(context).pop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mavi Sayfa"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Mavi Sayfa",
                style: TextStyle(color: Colors.blue),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.maybePop(context);
                },
                child: Text("Geri Dön"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
