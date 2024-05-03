import 'package:blog_app_w13/widget/category_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../model/blog_model.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.model});

  BlogModel model;

  String content =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer faucibus at lectus in pharetra. Nam consectetur euismod aliquet. Ut sit amet blandit velit, in posuere ligula. Aliquam in tristique leo. Aliquam magna orci, sollicitudin eget malesuada et, fermentum ut mi. Nullam et egestas ligula. Fusce ut ligula sollicitudin, laoreet felis quis, imperdiet urna. Donec sed leo eget enim ultrices venenatis nec ut arcu. Fusce ornare auctor risus quis hendrerit. Nulla ac facilisis ipsum, sed iaculis turpis. Nullam tristique suscipit blandit.

Maecenas quis elementum ligula, ac finibus ante. Donec egestas nibh in nunc suscipit, quis euismod diam varius. Sed eget porta mi, vitae hendrerit ante. Aenean eget congue mauris, vel sollicitudin felis. Nam non risus risus. Integer dictum ex in odio finibus dictum. Sed viverra aliquam sem, eu cursus ipsum dignissim eget. Praesent massa ex, malesuada malesuada luctus id, ornare et diam. Pellentesque non arcu justo. Fusce lobortis lobortis eros at tincidunt. Aenean vulputate quis eros at mattis. Fusce tempus nunc nulla, ac semper ante sodales maximus.

Cras blandit, diam et finibus pulvinar, lacus mauris laoreet felis, ac porttitor metus ipsum eget ligula. Pellentesque ultrices tortor tellus, ac sollicitudin tortor gravida sed. Vivamus ultrices, augue quis rutrum dignissim, est sem tristique sapien, ut gravida augue arcu vel nulla. Duis malesuada accumsan quam, in faucibus eros vehicula ut. Aenean in egestas nibh, eu feugiat nunc. Pellentesque vehicula, libero semper mollis imperdiet, eros leo vestibulum urna, et ornare nisl libero et mi. Praesent placerat pretium ligula vel auctor. Curabitur ac enim lorem. Suspendisse sed eleifend erat, a varius ipsum. Curabitur leo nulla, egestas vel mauris eleifend, pulvinar consequat eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut tellus hendrerit, elementum lectus quis, gravida elit. Aenean imperdiet tellus quis eros pulvinar rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin auctor interdum auctor. Aenean accumsan arcu ac ante maximus, id fringilla sapien tempus. Quisque luctus lectus lacus, ac auctor ex commodo et. Integer porttitor consequat lacus sit amet cursus. Donec quis interdum dolor, et feugiat tortor. Mauris tempus convallis sollicitudin.

Duis in vulputate augue. Nullam gravida tincidunt justo, a viverra enim. Cras mi enim, viverra non semper vel, dictum egestas nunc. Maecenas aliquam venenatis tellus, vel semper ipsum efficitur in. Proin sem nisi, vulputate vel viverra eget, vehicula nec dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam erat velit, hendrerit ut nunc a, facilisis rutrum sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(model.title),
              // expandedTitleScale: 1,
              background: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(model.imageUrl),
                  fit: BoxFit.cover,
                )),
                child: SafeArea(
                  child: Stack(
                    children: [
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CategoryChip(
                              categoryName: model.categoryName,
                              categoryColor: model.categoryColor,
                            ),
                            Text(
                              model.title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                      ),
                      /* Positioned(
                        left: 0,
                        bottom: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ), */
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverToBoxAdapter(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(content),
                ),
              ),
            ),
          ),
          // SliverList(delegate: SliverChildListDelegate.fixed([
          //   Text(""),
          // ]),),
        ],
      ),
    );
  }
}
