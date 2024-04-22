import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../model/user_model.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});

  List<UserModel> userList = [
    UserModel(name: "Furkan Yağmur", phone: "+905342834322"),
    UserModel(name: "Osman Yağmur", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Kar", phone: "+905342834322"),
    UserModel(name: "Osman Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Dolu", phone: "+905342834322"),
    UserModel(name: "Osman Dolu", phone: "+905342834322"),
    UserModel(name: "Kerem Dolu", phone: "+905342834322"),
    UserModel(name: "Furkan Yağmur", phone: "+905342834322"),
    UserModel(name: "Osman Yağmur", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Kar", phone: "+905342834322"),
    UserModel(name: "Osman Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Dolu", phone: "+905342834322"),
    UserModel(name: "Osman Dolu", phone: "+905342834322"),
    UserModel(name: "Kerem Dolu", phone: "+905342834322"),
    UserModel(name: "Furkan Yağmur", phone: "+905342834322"),
    UserModel(name: "Osman Yağmur", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Kar", phone: "+905342834322"),
    UserModel(name: "Osman Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Dolu", phone: "+905342834322"),
    UserModel(name: "Osman Dolu", phone: "+905342834322"),
    UserModel(name: "Kerem Dolu", phone: "+905342834322"),
    UserModel(name: "Furkan Yağmur", phone: "+905342834322"),
    UserModel(name: "Osman Yağmur", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Kar", phone: "+905342834322"),
    UserModel(name: "Osman Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Kar", phone: "+905342834322"),
    UserModel(name: "Kerem Yağmur", phone: "+905342834322"),
    UserModel(name: "Furkan Dolu", phone: "+905342834322"),
    UserModel(name: "Osman Dolu", phone: "+905342834322"),
    UserModel(name: "Kerem Dolu", phone: "+905342834322"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Kullanımları"),
      ),
      body: _listViewBuilderKullanimi(),
    );
  }

  ListView _listViewBuilderKullanimi() {
    return ListView.separated(
      // shrinkWrap: true,
      physics: PageScrollPhysics(),
      // physics: RangeMaintainingScrollPhysics(),
      itemCount: userList.length,
      itemBuilder: (context, index) {
        UserModel user = userList[index];
        return _buildItem(
          name: user.name,
          phone: user.phone,
          index: index,
          context: context,
        );
      },
      separatorBuilder: (context, index) {
        /* return Divider(
          indent: 32,
          endIndent: 32,
        ); */
          
        /* return Container(
          width: 200,
          height: 50,
          color: Colors.amber,
        ); */
          
        if ((index + 1) % 3 == 0) {
          return Container(
            height: 200,
            child: Center(
              child: Text("Gelecek Vadisi"),
            ),
          );
          // return Container(height: 100, color: Colors.green,);
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildShrinkWrapDemo() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Sayfa başlığı"),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(8),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(color: Colors.blue, height: 100, width: double.infinity,),
                Container(color: Colors.orange, height: 100, width: double.infinity,),
                Container(color: Colors.purple, height: 100, width: double.infinity,),
                Container(color: Colors.blue, height: 100, width: double.infinity,),
                Container(color: Colors.orange, height: 100, width: double.infinity,),
                Container(color: Colors.purple, height: 100, width: double.infinity,),
                Container(color: Colors.blue, height: 100, width: double.infinity,),
                Container(color: Colors.orange, height: 100, width: double.infinity,),
                Container(color: Colors.purple, height: 100, width: double.infinity,),
                Container(color: Colors.blue, height: 100, width: double.infinity,),
                Container(color: Colors.orange, height: 100, width: double.infinity,),
                Container(color: Colors.purple, height: 100, width: double.infinity,),
              ],
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Tamam"),),
        ],
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      children: [
        Text(""),
        _buildItem(
          name: "Furkan Yağmur",
          phone: "+905342834322",
          index: 0,
          context: context,
        ),
        _buildItem(
          name: "Furkan Yağmur",
          phone: "+905342834322",
          index: 0,
          context: context,
        ),
        _buildItem(
          name: "Furkan Yağmur",
          phone: "+905342834322",
          index: 0,
          context: context,
        ),
      ],
    );
  }

  Widget _buildItem({
    required String name,
    required String phone,
    required int index,
    required BuildContext context,
  }) {
    return ListTile(
      style: ListTileStyle.list,
      // tileColor: index %2 == 0 ? Colors.red : Colors.white,
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
        child: Text(name.characters.first),
      ),
      title: Text(name),
      subtitle: Text(phone),
      trailing: IconButton(
        icon: const Icon(Icons.call),
        onPressed: () {},
      ),
      onTap: () {
        String content =
            """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique vulputate mi nec semper. Sed ac arcu velit. In tincidunt massa lorem, sed placerat enim finibus nec. Cras sed lorem eros. Praesent at pharetra leo. Quisque sit amet fermentum erat, ac eleifend libero. Etiam eget nisl ac justo pellentesque facilisis. Quisque vitae erat nunc. Aliquam pharetra augue mauris. Morbi a metus molestie, porttitor elit sed, cursus mi. Nam eu porta ante.

Fusce in diam interdum, maximus lectus quis, faucibus eros. Pellentesque sed cursus ipsum. Etiam rhoncus, purus sit amet molestie convallis, mi dui gravida mi, vitae mollis lorem orci sit amet nisl. Aenean accumsan posuere enim, ut ullamcorper lectus lacinia ac. Aliquam non tellus et lacus suscipit semper. Nulla nisl justo, tristique eget ornare id, elementum in dolor. In posuere, nulla lobortis consectetur pellentesque, purus arcu pulvinar lacus, at tempus metus nulla vitae odio. Nullam et vulputate elit, vel mollis lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur vel quam nulla. Fusce ac sapien ac lacus posuere volutpat. Praesent eget sem eu est hendrerit fringilla eget eu tortor. Proin porttitor sodales purus et eleifend. Aenean nisl velit, tempor a tellus vel, egestas interdum mi. Curabitur malesuada tempor ex non commodo.

Nulla facilisi. Proin egestas tellus tristique nunc commodo convallis. Nulla fringilla lacus at felis laoreet feugiat. Donec condimentum consequat enim eget aliquet. Sed euismod nunc quis sem accumsan, et tincidunt tellus auctor. Praesent dignissim sed diam eget iaculis. Fusce facilisis orci accumsan, iaculis leo ac, hendrerit libero. Aenean ac mollis lorem, nec iaculis leo. Suspendisse quis facilisis nibh. Nullam dolor odio, scelerisque non orci at, pulvinar congue ligula. Proin ornare faucibus dui, sit amet laoreet nibh porta sit amet. Proin et nulla risus.

Etiam in nisl at diam convallis placerat sit amet vel erat. Curabitur feugiat laoreet ante, ut tincidunt leo pharetra eu. Nunc nec augue at metus tristique aliquam ut sed diam. Mauris nec ex enim. Aliquam dapibus interdum libero. Praesent sapien risus, lacinia vitae malesuada et, fringilla quis enim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis ante dui, egestas sit amet ornare vitae, volutpat eget eros. Maecenas sodales, eros non placerat fermentum, tortor tellus aliquam urna, vel molestie nisi purus at lorem. Nunc condimentum sollicitudin convallis. Sed molestie lectus tortor, eget pellentesque turpis vestibulum sed. Integer hendrerit nisl non sagittis imperdiet.

Pellentesque aliquet, justo volutpat imperdiet maximus, tortor elit porta eros, at faucibus quam mauris nec leo. Cras purus lectus, tempor at magna non, dictum sodales velit. Fusce dignissim, metus id pretium ultrices, odio leo tincidunt risus, ac ultricies libero risus eget ipsum. Ut consequat varius aliquet. Duis eu massa et dolor vulputate viverra convallis sit amet justo. Morbi tincidunt rutrum eleifend. Nullam bibendum justo in sagittis ornare. Fusce sem felis, hendrerit non pharetra non, laoreet quis lectus. In finibus sapien ut mattis ultricies. Suspendisse iaculis ligula a libero tincidunt sollicitudin. Ut dignissim at felis vitae molestie. Integer convallis libero ac mi porttitor lobortis. Pellentesque sit amet tempor massa.""";

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Kişi Ara"),
                content: SingleChildScrollView(
                  child: Text(content),
                ),
                icon: Icon(Icons.call),
                actions: [
                  TextButton(onPressed: () {}, child: Text("İptal")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor:
                            const Color.fromARGB(255, 196, 180, 180),
                      ),
                      onPressed: () {},
                      child: Text("Ara")),
                ],
              );
            });
      },
      onLongPress: () {
        _showToastMessage();
        // _showSnackbar(context);
      },
    );
  }

  void _showToastMessage() {
    EasyLoading.instance.toastPosition = EasyLoadingToastPosition.bottom;
    /* 
    EasyLoading.instance
      ..toastPosition = EasyLoadingToastPosition.bottom
      ..backgroundColor = Colors.red
      ..fontSize = 24;
     */
    EasyLoading.showToast("Kişi Aranıyor...");
  }

  _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 4),
        dismissDirection: DismissDirection.startToEnd,
        action: SnackBarAction(label: "Tamam", onPressed: () {}),
        content: Text(
          "Kişi aranıyor....",
        ),
      ),
    );
    debugPrint("Kişi aranıyor....");
  }
}
