import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workshop_1_project/page/home_page.dart';

void main() {

  /* List<String> ogrenciListesi = [
    "Nurten Yanbolu",
    "Ahmet Rıdvan Ordulu",
    "Mehmet Bilen",
  ];

  List<String> egitmenListesi = [
    "Furkan Yağmur",
    "Emir Gözcü",
  ];

  var isimListesi = [
    ...ogrenciListesi,
    "Ali",
    ...egitmenListesi,
    "Mehmet",
    "Ahmet",
  ]; */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  Snake Case      snake_case      dosya, klasör
  //  Camel Case      camelCase       değişken, fonksiyonlar
  //  Pascal Case     PascalCase      class

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 892),
      builder: (context, child) {
        return MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      }
    );
  }
}