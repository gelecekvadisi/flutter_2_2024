import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets_1/pages/camera_screen.dart';
import 'package:flutter_widgets_1/pages/feed_screen.dart';
import 'package:flutter_widgets_1/pages/profile_screen.dart';
import 'package:flutter_widgets_1/pages/search_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int selectedPageIndex = 0;
  late PageController _pageController;
  late TabController tabController;

  List<Widget> pageList = [
    const CameraScreen(
      key: PageStorageKey("camera_page"),
    ),
    const FeedScreen(
      key: PageStorageKey("feed_screen"),
    ),
    const SearchScreen(
      key: PageStorageKey("search_screen"),
    ),
    const ProfileScreen(
      key: PageStorageKey("profile_screen"),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: selectedPageIndex,
    );
    _pageController.addListener(() {
      selectedPageIndex = _pageController.page?.round() ?? 0;
      tabController.index = _pageController.page?.round() ?? 0;
    });
    tabController = TabController(length: pageList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pageList.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ana Sayfa"),
          bottom: TabBar(
            controller: tabController,
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
            tabs: const [
              Tab(
                text: "Kamera",
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: "Ana Sayfa",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Arama",
                icon: Icon(Icons.search),
              ),
              Tab(
                text: "Profil",
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {});
          },
          children: pageList,
        ),
        // body: TabBarView(children: pageList, controller: tabController,),
        drawer: _buildDrawer(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        // backgroundColor: Colors.blue,
        currentIndex: selectedPageIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          // _pageController.nextPage(duration: Durations.short3, curve: Curves.bounceIn);
          // _pageController.previousPage(duration: Duration(milliseconds: 400), curve: Curves.bounceOut);
          // setState(() {
          //   selectedPageIndex = index;
          // });
        },
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "Camera",
              activeIcon: Icon(Icons.photo_album),
              backgroundColor: Colors.red,
              tooltip: "Kamera"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.green),
        ]);
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          // DrawerHeader(),
          UserAccountsDrawerHeader(
            accountName: const Text("Furkan Yağmur"),
            accountEmail: const Text("furkan@gelecekvadisi.org"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg"),
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg"),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg"),
              )
            ],
            onDetailsPressed: () {},
          ),
          Expanded(
            child: ListView(
              children: [
                const ListTile(
                  title: Text("Ana Sayfa"),
                ),
                const ListTile(
                  title: Text("Kamera Sayfası"),
                ),
                const ListTile(
                  title: Text("Profil Sayfası"),
                ),
                SwitchListTile(
                    thumbIcon: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Icon(Icons.sunny);
                      } else if (states.contains(MaterialState.disabled)) {
                        return const Icon(Icons.nightlight);
                      }
                    }),
                    title: const Text("Karanlık Tema"),
                    value: false,
                    onChanged: (value) {}),
                const ListTile(
                  title: Text("Ana Sayfa"),
                ),
                const ListTile(
                  title: Text("Kamera Sayfası"),
                ),
                const ListTile(
                  title: Text("Profil Sayfası"),
                ),
                SwitchListTile(
                    thumbIcon: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Icon(Icons.sunny);
                      } else if (states.contains(MaterialState.disabled)) {
                        return const Icon(Icons.nightlight);
                      }
                    }),
                    title: const Text("Karanlık Tema"),
                    value: false,
                    onChanged: (value) {}),
                const ListTile(
                  title: Text("Ana Sayfa"),
                ),
                const ListTile(
                  title: Text("Kamera Sayfası"),
                ),
                const ListTile(
                  title: Text("Profil Sayfası"),
                ),
                SwitchListTile(
                    thumbIcon: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Icon(Icons.sunny);
                      } else if (states.contains(MaterialState.disabled)) {
                        return const Icon(Icons.nightlight);
                      }
                    }),
                    title: const Text("Karanlık Tema"),
                    value: false,
                    onChanged: (value) {}),
                const ListTile(
                  title: Text("Ana Sayfa"),
                ),
                const ListTile(
                  title: Text("Kamera Sayfası"),
                ),
                const ListTile(
                  title: Text("Profil Sayfası"),
                ),
                SwitchListTile(
                    thumbIcon: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Icon(Icons.sunny);
                      } else if (states.contains(MaterialState.disabled)) {
                        return const Icon(Icons.nightlight);
                      }
                    }),
                    title: const Text("Karanlık Tema"),
                    value: false,
                    onChanged: (value) {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
