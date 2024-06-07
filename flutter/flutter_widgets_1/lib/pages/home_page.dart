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

class _HomePageState extends State<HomePage> {
  int selectedPageIndex = 0;

  List<Widget> pageList = [
    const CameraScreen(),
    const FeedScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Furkan Yağmur"),
              accountEmail: const Text("furkan@gelecekvadisi.org"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg"),
              ),
              otherAccountsPictures: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg"),
                ),
                const CircleAvatar(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.blue,
          currentIndex: selectedPageIndex,
          onTap: (index) {
            setState(() {
              selectedPageIndex = index;
            });
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
              backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Colors.purple,),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.green
            ),
          ]),
      body: pageList[selectedPageIndex],
    );
  }
}
