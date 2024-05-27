import 'package:fields_demo/form_inputs_page.dart';
import 'package:fields_demo/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FormInputsPage(),
    );
  }
}