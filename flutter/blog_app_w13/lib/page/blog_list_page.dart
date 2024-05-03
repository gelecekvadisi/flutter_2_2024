import 'package:blog_app_w13/page/detail_page.dart';
import 'package:blog_app_w13/widget/category_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/blog_model.dart';

class BlogListPage extends StatelessWidget {
  BlogListPage({super.key});

  // String content =
  //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non est ut nunc pellentesque tempor ac id massa. Mauris elementum.";

  // String imageUrl =
  //     "https://thumbs.dreamstime.com/b/spring-summer-landscape-blue-sky-clouds-river-boat-green-trees-narew-countryside-grass-poland-water-leaves-58070004.jpg";

  List<BlogModel> itemList = [
    BlogModel(
      imageUrl:
          "https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg",
      title: "Bir yazılımcının yol haritası",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
      categoryName: "Teknoloji",
      categoryColor: Colors.redAccent,
    ),
    BlogModel(
      imageUrl:
          "https://www.explore.com/img/gallery/the-50-most-incredible-landscapes-in-the-whole-entire-world/intro-1672072042.jpg",
      title: "Bir yazılımcının yol haritası",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
      categoryName: "Yazılım",
      categoryColor: Colors.orangeAccent.shade400,
    ),
    BlogModel(
      imageUrl:
          "https://static.vecteezy.com/system/resources/thumbnails/029/592/352/small_2x/landscape-with-country-road-empty-asphalt-road-on-sunset-background-multicolor-vibrant-outdoors-horizontal-image-generative-ai-illustration-free-photo.jpg",
      title: "Bir yazılımcının yol haritası",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
      categoryName: "Günlük",
      categoryColor: Colors.deepPurple.shade400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return _buildItem(model: itemList[index], context: context);
        },
      ),
    );
  }

  Widget _buildItem({
    required BlogModel model,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        NavigatorState navigator = Navigator.of(context);
        navigator.push(
          MaterialPageRoute(builder: (context) {
            return DetailPage(model: model);
          }),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  model.imageUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CategoryChip(
                    categoryColor: model.categoryColor,
                    categoryName: model.categoryName,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    model.content,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Blog"),
      centerTitle: true,
      leading: Icon(Icons.menu),
      actions: [Icon(Icons.search)],
    );
  }
}
