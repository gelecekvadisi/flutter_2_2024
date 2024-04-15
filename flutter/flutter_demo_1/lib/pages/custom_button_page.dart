import 'package:flutter/material.dart';

class CustomButtonPage extends StatefulWidget {
  CustomButtonPage({super.key});

  @override
  State<CustomButtonPage> createState() => _CustomButtonPageState();
}

class _CustomButtonPageState extends State<CustomButtonPage> {
  int? secilenSehir;

  List<String> sehirler = [
    "İstanbul",
    "Ankara",
    "Bursa",
    "İzmir",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Button Page"),
      ),
      body: Center(
        child: PopupMenuButton<String>(
          itemBuilder: (context) {
            return sehirler
                .map((e) => PopupMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList();
            /* return [
            PopupMenuItem(child: Text("İstanbul"), value: "istanbul",),
            PopupMenuItem(child: Text("Ankara"), value: "ankara",),
            PopupMenuItem(child: Text("Bursa"), value: "bursa",),
          ]; */
          },
          onSelected: (selectedValue) {
            debugPrint("Seçilen şehir: $selectedValue");
          },
        ),
      ),
    );
  }

  DropdownButton<int> _buildDropdownButton() {
    return DropdownButton<int>(
      underline: Container(
        height: 2,
        color: Colors.green,
      ),
      hint: Text("Şehir Seçiniz..."),
      items: const [
        DropdownMenuItem(
          value: 34,
          child: Text("İstanbul"),
        ),
        DropdownMenuItem(
          value: 6,
          child: Text("Ankara"),
        ),
        DropdownMenuItem(
          value: 16,
          child: Text("Bursa"),
        ),
      ],
      value: secilenSehir,
      onChanged: (deger) {
        if (deger != null) {
          setState(() {
            secilenSehir = deger;
          });
        }
      },
    );
  }
}
