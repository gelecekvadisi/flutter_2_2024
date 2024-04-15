import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve ListTile Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
            _buildCard(),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      indent: 32,
      endIndent: 32,
    );
    /* return Container(
      height: 1,
      color: Colors.black26,
      margin: EdgeInsets.symmetric(horizontal: 32),
    ); */
  }

  Widget _buildCard() {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
        child: Text("F"),
      ),
      title: Text("Furkan Yağmur"),
      subtitle: Text("0542 345 5223"),
      trailing: IconButton(
        icon: Icon(Icons.call),
        onPressed: () {},
      ),
      onTap: () {
        debugPrint("Kişi aranıyor....");
      },
    );
  }
}
