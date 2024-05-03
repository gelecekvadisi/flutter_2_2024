import 'package:blog_app_w13/page/detail_page.dart';
import 'package:flutter/material.dart';

import 'model/blog_model.dart';
import 'page/blog_list_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: BlogListPage(),
    );
  }
}

/* BlogModel(
          imageUrl:
              "https://www.explore.com/img/gallery/the-50-most-incredible-landscapes-in-the-whole-entire-world/intro-1672072042.jpg",
          title: "Bir yazılımcının yol haritası",
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
          categoryName: "Yazılım",
          categoryColor: Colors.orangeAccent.shade400,
        ) */