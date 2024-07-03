import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hive_demo/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Box? box;

  @override
  void initState() {
    super.initState();
    // Hive.openBox("user").then((value) {
    //   box = value;
    // },);

    SchedulerBinding.instance.addPersistentFrameCallback(
      (timeStamp) async {
        box = await Hive.openBox("user");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Demo"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              if (box == null) return;

              await box!.clear();

              await box!.put("name", "Furkan");
              await box!.putAll({
                "lastName": "Yağmur",
                "school": "DPÜ",
                "mezunMu": true,
                "gno": 3.02,
              });

              String school = box!.get("school");
              debugPrint("Mezun olduğu okul: $school");

              debugPrint("--------------------------");
              for (var key in box!.keys) {
                debugPrint("$key: ${box!.get(key)}");
              }
              debugPrint("--------------------------");

              debugPrint(box!.toMap().toString());
              debugPrint("--------------------------");

              box!.add("Furkan Yağmur");
              box!.add("Emir Gözcü");
              box!.add("Kerem Yağmur");

              box!.deleteAt(2);

              debugPrint("--------------------------");

              debugPrint(box!.toMap().toString());
              debugPrint("--------------------------");

              box!.addAll(["Osman Yağmur"]);

              box!.delete("school");
              box!.deleteAt(0);
              box!.putAt(10, "Ali");
            },
            child: Text("Veri Kaydet"),
          ),
          ElevatedButton(
            onPressed: () async {
              Box<UserModel> studentBox =
                  await Hive.openBox<UserModel>("student");

              await studentBox.add(UserModel(
                name: "Furkan",
                lastName: "Yağmur",
                gno: 3.14,
                mezunMu: false,
              ));

              debugPrint("${studentBox.toMap()}");
            },
            child: Text("User Ekle"),
          ),
        ],
      ),
    );
  }
}
