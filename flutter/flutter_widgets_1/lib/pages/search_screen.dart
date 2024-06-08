import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  final String contentText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel auctor ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam auctor accumsan porta. Cras efficitur augue id arcu cursus sollicitudin. Aenean id turpis rutrum mauris placerat mollis. In hac habitasse platea dictumst. Vestibulum dui ipsum, consequat in ligula in, dictum mollis sapien. Sed convallis diam erat, non tristique metus molestie ac. Etiam euismod eu magna ultrices interdum. Nullam non malesuada arcu. Donec mollis augue eu accumsan imperdiet. Nam volutpat dui quis eros rutrum iaculis. Sed sit amet posuere justo, et ultricies augue.";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text("Tile ${index + 1}"),
          childrenPadding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(),
          children: [
            Text("${index + 1}. metin : $contentText"),
          ],
        );
      },
    );
  }
}
