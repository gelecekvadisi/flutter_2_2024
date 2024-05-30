import 'package:fields_demo/dialog_demo_page.dart';
import 'package:fields_demo/form_inputs_page.dart';
import 'package:fields_demo/home_page.dart';
import 'package:fields_demo/stepper_demo_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DialogDemoPage(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
        child: child!,
      ),
    );
  }
}
