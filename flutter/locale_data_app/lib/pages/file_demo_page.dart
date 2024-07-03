import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:locale_data_app/model/user_model.dart';
import 'package:locale_data_app/service/file_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileDemoPage extends StatefulWidget {
  FileDemoPage({super.key});

  @override
  State<FileDemoPage> createState() => _FileDemoPageState();
}

class _FileDemoPageState extends State<FileDemoPage> {
  String? data;

  User user = User.fromJson({
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                FileService.writeData(user);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text("Veriler kaydedildi!"),
                  ),
                );
              },
              child: Text("Verileri Kaydet"),
            ),
            ElevatedButton(
              onPressed: () async {
                
                String? jsonString = await FileService.readData(/* (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Dosya yok!"),
                    ),
                  );
                } */);

                if (jsonString == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Dosya yok!"),
                    ),
                  );
                  return;
                }

                Map<String, dynamic> map = jsonDecode(jsonString);

                User user = User.fromJson(map);

                setState(() {
                  data = user.username;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Veri yazdırıldı!"),
                    ),
                  );
              },
              child: Text("Verileri Yazdır"),
            ),
            ElevatedButton(
              onPressed: () async {
                Directory directory = await getApplicationDocumentsDirectory();
                String path = "${directory.path}/local_data_file.json";
                File file = File(path);

                if (file.existsSync()){
                  await file.delete();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Dosya silindi!"),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Dosya bulunamadı!"),
                    ),
                  );
                }


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
