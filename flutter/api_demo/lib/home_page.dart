import 'dart:convert';

import 'package:flutter/material.dart';

import 'model/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lokal JSON"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _getDataFromFile(context);
            },
            child: Text("Verileri Getir"),
          ),
        ],
      ),
    );
  }

  _getDataFromFile(BuildContext context) async {
    String usersString =
        await DefaultAssetBundle.of(context).loadString("assets/users.json");

    List dynamicList = (jsonDecode(usersString) as List);
    List<Map<String, dynamic>> mapList = dynamicList.map((element) => element as Map<String, dynamic>).toList();
    List<User> userList = mapList.map((element) => User.fromJson(element)).toList();



    /* List<User> userList = (jsonDecode(usersString) as List).map(
      (element) => User.fromJson(element as Map<String, dynamic>),
    ).toList(); */

    // debugPrint(userList.toString());

    debugPrint(userList[3].username);


  }
}

