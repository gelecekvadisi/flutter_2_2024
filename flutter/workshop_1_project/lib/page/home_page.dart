import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workshop_1_project/constants.dart';
import 'package:workshop_1_project/widgets/category_list.dart';
import 'package:workshop_1_project/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Home Page Build");
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(Constants.defaultPadding),
            child: Text(
              "Women",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Constants.textColor,
              ),
            ),
          ),
          CategoryList(),
        ],
      ),
    );
  }
}
