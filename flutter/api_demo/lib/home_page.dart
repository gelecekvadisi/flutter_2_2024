import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/user_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User>? userList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lokal JSON"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sync),
        onPressed: () {
          // _getDataFromFile(context);
          _getDataFromApi();
        },
      ),
      body: FutureBuilder<List<User>>(
        future: _getDataFromApi(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child:
                  Text(snapshot.error?.toString() ?? "Bir hata meydana geldi!"),
            );
          } else if (snapshot.hasData) {
            return _buildListView(snapshot.data!);
          } else {
            return _buildLoading();
          }
        },
      ),
    );
  }

  Center _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  ListView _buildListView(List<User> userList) {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, index) {
        User user = userList[index];

        return ListTile(
          leading: CircleAvatar(
            child: Text(user.id!.toString()),
          ),
          title: Text(user.name!),
          subtitle: Text(user.email!),
        );
      },
    );
  }

  Future _getDataFromFile(BuildContext context) async {
    try {
      String usersString =
          await DefaultAssetBundle.of(context).loadString("assets/users.json");

      List dynamicList = (jsonDecode(usersString) as List);
      List<Map<String, dynamic>> mapList = dynamicList
          .map((element) => element as Map<String, dynamic>)
          .toList();
      userList = mapList.map((element) => User.fromJson(element)).toList();

      setState(() {});

      debugPrint(userList![3].username);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<User>> _getDataFromApi() async {
    
    http.Response response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    
    if (response.statusCode != 200) {
      return Future.error("Api ile bağlantı kurulamadı!");
    }
    
    String usersString = response.body;

    List dynamicList = (jsonDecode(usersString) as List);
    List<Map<String, dynamic>> mapList = dynamicList
          .map((element) => element as Map<String, dynamic>)
          .toList();
    List<User> userList = mapList.map((element) => User.fromJson(element)).toList();

    return userList;    
  }
}
