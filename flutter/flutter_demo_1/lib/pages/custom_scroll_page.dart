import 'dart:math';

import 'package:flutter/material.dart';

class CustomScrollPage extends StatelessWidget {
  const CustomScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text("Custom Scroll Kullanımı"),
            backgroundColor: Colors.blue,
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Custom Scroll View"),
              background: Image.network(
                "https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg",
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              titlePadding: EdgeInsetsDirectional.only(start: 0, bottom: 16),
              expandedTitleScale: 1.5,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    // color: Colors.white,
                  ),
                ),
              ),
            ],
            leading: IconButton(
                onPressed: () {},
                icon: CircleAvatar(child: Icon(Icons.browse_gallery))),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 300,
                color: Colors.primaries[Random().nextInt(18)],
              ),
              Container(
                height: 300,
                color: Color.fromARGB(
                  255,
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              ),
            ]),
            /* delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 300,
                  color: Colors.primaries[Random().nextInt(18)],
                );
              },
              childCount: 10,
            ), */
          ),
          // SliverGrid(
          //   delegate: SliverChildListDelegate([]),
          //   gridDelegate:
          //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
          // ),
          // SliverVisibility(
          //   sliver: Text("Bu metin şu anda görünüyor mu?"),
          // ),
          SliverVisibility(
            visible: false,
            // maintainState: true,
            // maintainSemantics: true,
            // maintainSize: true,
            // maintainAnimation: true,
            sliver: SliverToBoxAdapter(
              child: Text("Bu metin şu anda görünüyor mu?"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          // SliverFixedExtentList(delegate: delegate, itemExtent: itemExtent)
          SliverOpacity(
            opacity: 0.6,
            sliver: SliverToBoxAdapter(
              child: Image.network(
                "https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
